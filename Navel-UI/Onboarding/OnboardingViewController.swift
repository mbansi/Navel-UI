//
//  OnboardingViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 25/05/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var onboardButton: BaseFilledButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    //MARK: - Variables
    var currentPage = 0
        {
            didSet {
                if currentPage == slides.count - 1  {
                    onboardButton.setTitle("Sign up", for: .normal)
                    onboardButton.setTitleColor(R.color.mediumGreen(), for: .normal)
                    onboardButton.setImage(UIImage(), for: .normal)
                    
                    onboardButton.titleLabel?.font = R.font.ralewayRegular(size: 8)
                }
                else {
                   onboardButton.setTitle("", for: .normal)
                    onboardButton.setImage(UIImage(named: "Next"), for: .normal)
                }
            }
        }
    
    var slides: [OnboardingSlide] = [
        OnboardingSlide(image: UIImage(named: "onboard1")!, title: "Explore the beauty of the world !" , location: "Kelingking Beach, Indoensia" ),
        OnboardingSlide(image: UIImage(named: "onboard2")! , title: "Enjoy your travel experience", location: "Oro oro Ombo, Indoensia" ),
        OnboardingSlide(image: UIImage(named: "onboard3")! , title: "Let’s make your dream travel", location: "Kelingking Beach, Indoensia" )]
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        currentPage = pageControl.currentPage
    }
    
    //MARK: - Actions
    @IBAction func nextSlideAction(_ sender: BaseFilledButton) {
        
        if pageControl.currentPage == slides.count - 1 {
            if let signUp = UIStoryboard(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController{
                navigationController?.pushViewController(signUp, animated: true)
            }
        }
        currentPage += 1
        pageControl.currentPage = pageControl.currentPage + 1
        let index = IndexPath(item: pageControl.currentPage, section: 0)
        collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
        
    }
}

//MARK: - CollectionView Delegate, DataSource
extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as? OnboardingCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.setup(slides[indexPath.row])
        return cell
    }

}

//MARK: - CollectionView DelegateFlowLayout
extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
        pageControl.currentPage = currentPage
    }
}
