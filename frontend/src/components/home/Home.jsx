import { useEffect } from "react";

import './../../stylesheets/home.css'

import img1 from './../../resources/images/about_page.jpg'
import img2 from './../../resources/images/contact_img.jpg'
import img3 from './../../resources/images/loading_cube.png'
import img4 from './../../resources/images/faq.jpg'
import interior from './../../resources/images/interior.png'
import img5 from './../../resources/images/graph.jpg'
import img6 from './../../resources/images/hero_img.jpg'
import img7 from './../../resources/images/home_maps.jpg'

import Carousel from "../util-components/carousel/AliceCarousel";
import { useSelector } from "react-redux";

const Home = (props) => {
    const user = useSelector(state => state.user.userInfo);
    console.log(user)
    useEffect(() => {
        props.setOnPage(1)
    }, [props])

    const images = [
        img1, img2, img3, img4, img5, img6, img7
    ]

    // return (
    //     <>
    //         <div id="home">
    //             <Carousel images={images} />
    //         </div>
    //     </>
    // )


    if (!user) {
        return (
        <div className="main">
            <div className="relative bg-purple-200 dark:bg-purple-500 p-4 sm:p-6 rounded-sm overflow-hidden mb-8">
                {/* Background illustration */}
                <div className="absolute right-0 top-0 -mt-4 mr-16 pointer-events-none hidden xl:block" aria-hidden="true">
                    <svg width="319" height="198" xmlnsXlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <path id="welcome-a" d="M64 0l64 128-64-20-64 20z" />
                            <path id="welcome-e" d="M40 0l40 80-40-12.5L0 80z" />
                            <path id="welcome-g" d="M40 0l40 80-40-12.5L0 80z" />
                            <linearGradient x1="50%" y1="0%" x2="50%" y2="100%" id="welcome-b">
                                <stop stopColor="#800080" offset="0%" />
                                <stop stopColor="#818CF8" offset="100%" />
                            </linearGradient>
                            <linearGradient x1="50%" y1="24.537%" x2="50%" y2="100%" id="welcome-c">
                                <stop stopColor="#4338CA" offset="0%" />
                                <stop stopColor="#6366F1" stopOpacity="0" offset="100%" />
                            </linearGradient>
                        </defs>
                        <g fill="none" fillRule="evenodd">
                            <g transform="rotate(64 36.592 105.604)">
                                <mask id="welcome-d" fill="#fff">
                                    <use xlinkHref="#welcome-a" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-a" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-d)" d="M64-24h80v152H64z" />
                            </g>
                            <g transform="rotate(-51 91.324 -105.372)">
                                <mask id="welcome-f" fill="#fff">
                                    <use xlinkHref="#welcome-e" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-e" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-f)" d="M40.333-15.147h50v95h-50z" />
                            </g>
                            <g transform="rotate(44 61.546 392.623)">
                                <mask id="welcome-h" fill="#fff">
                                    <use xlinkHref="#welcome-g" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-g" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-h)" d="M40.333-15.147h50v95h-50z" />
                            </g>
                        </g>
                    </svg>
                    

                </div>

                {/* Content */}
                <div className="relative">
                    <h1 className="text-2xl md:text-3xl text-slate-800 dark:text-slate-100 font-bold mb-1">Good afternoon,  👋</h1>
                    <p className="dark:text-indigo-200">Please Login to manage your rooms better !</p>
                </div>

              


            </div>
            <div className=" m-5 container mx-auto flex items-center justify-center ">
      <div className="flex-1 pl-16">
        <h1 className="text-6xl font-bold text-black mb-4">Designing Dreams, Crafting Homes.</h1>
        <p className="text-gray-700">Transforming Spaces, Connecting Hearts. Your Vision, Our Expertise.</p>
      </div>
      <div className="flex-1 pr-16 text-center">
        <img src={interior} alt="Design Image" className="max-w-2xl h-auto rounded-lg mx-auto mt-4" />
      </div>
    </div>

        </div>
        ); 
    }


    return (
        <div className="main">
            <div className="relative bg-purple-200 dark:bg-purple-500 p-4 sm:p-6 rounded-sm overflow-hidden mb-8">
                {/* Background illustration */}
                <div className="absolute right-0 top-0 -mt-4 mr-16 pointer-events-none hidden xl:block" aria-hidden="true">
                    <svg width="319" height="198" xmlnsXlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <path id="welcome-a" d="M64 0l64 128-64-20-64 20z" />
                            <path id="welcome-e" d="M40 0l40 80-40-12.5L0 80z" />
                            <path id="welcome-g" d="M40 0l40 80-40-12.5L0 80z" />
                            <linearGradient x1="50%" y1="0%" x2="50%" y2="100%" id="welcome-b">
                                <stop stopColor="#800080" offset="0%" />
                                <stop stopColor="#818CF8" offset="100%" />
                            </linearGradient>
                            <linearGradient x1="50%" y1="24.537%" x2="50%" y2="100%" id="welcome-c">
                                <stop stopColor="#4338CA" offset="0%" />
                                <stop stopColor="#6366F1" stopOpacity="0" offset="100%" />
                            </linearGradient>
                        </defs>
                        <g fill="none" fillRule="evenodd">
                            <g transform="rotate(64 36.592 105.604)">
                                <mask id="welcome-d" fill="#fff">
                                    <use xlinkHref="#welcome-a" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-a" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-d)" d="M64-24h80v152H64z" />
                            </g>
                            <g transform="rotate(-51 91.324 -105.372)">
                                <mask id="welcome-f" fill="#fff">
                                    <use xlinkHref="#welcome-e" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-e" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-f)" d="M40.333-15.147h50v95h-50z" />
                            </g>
                            <g transform="rotate(44 61.546 392.623)">
                                <mask id="welcome-h" fill="#fff">
                                    <use xlinkHref="#welcome-g" />
                                </mask>
                                <use fill="url(#welcome-b)" xlinkHref="#welcome-g" />
                                <path fill="url(#welcome-c)" mask="url(#welcome-h)" d="M40.333-15.147h50v95h-50z" />
                            </g>
                        </g>
                    </svg>
                </div>

                {/* Content */}
                <div className="relative">
                    <h1 className="text-2xl md:text-3xl text-slate-800 dark:text-slate-100 font-bold mb-1">Good afternoon, {user ? user?.displayName : 'Please Log In'}. 👋</h1>
                    <p className="dark:text-indigo-200">Here is what’s happening with your rooms today:</p>

                </div>


                <div className="grid grid-cols-12 gap-6">

                </div>



            </div>

            <div className="flex flex-wrap mx-2 my-2">
                {/* Card 1 */}
                <div className="w-full sm:w-1/2 lg:w-1/4 px-4 mb-4">
                    <div className="bg-purple-100 p-6 rounded-lg shadow-md transition-shadow duration-300 hover:shadow-lg">
                        <h2 className="text-2xl font-semibold mb-2 text-gray-800">Real-Time Project Updates</h2>
                        <p className="text-gray-600">
                            A centralized dashboard providing real-time updates for all members of a family .
                        </p>
                        <div className="mt-4 text-lg text-gray-700">
                            <p>Status: Ongoing</p>
                            <p>Last Update: 2 hours ago</p>
                        </div>
                    </div>
                </div>

                <div className="w-full sm:w-1/2 lg:w-1/4 px-4 mb-4">
                    <div className="bg-purple-100 p-6 rounded-lg shadow-md transition-shadow duration-300 hover:shadow-lg">
                        <h2 className="text-2xl font-semibold mb-2 text-gray-800">Real-Time Project Updates</h2>
                        <p className="text-gray-600">
                            A centralized dashboard providing real-time updates for all members of a family .
                        </p>
                        <div className="mt-4 text-lg text-gray-700">
                            <p>Status: Ongoing</p>
                            <p>Last Update: 2 hours ago</p>
                        </div>
                    </div>
                </div>

                <div className="w-full sm:w-1/2 lg:w-1/4 px-4 mb-4">
                    <div className="bg-purple-100 p-6 rounded-lg shadow-md transition-shadow duration-300 hover:shadow-lg">
                        <h2 className="text-2xl font-semibold mb-2 text-gray-800">Real-Time Project Updates</h2>
                        <p className="text-gray-600">
                            A centralized dashboard providing real-time updates for all members of a family .
                        </p>
                        <div className="mt-4 text-lg text-gray-700">
                            <p>Status: Ongoing</p>
                            <p>Last Update: 2 hours ago</p>
                        </div>
                    </div>
                </div>

                <div className="w-full sm:w-1/2 lg:w-1/4 px-4 mb-4">
                    <div className="bg-purple-100 p-6 rounded-lg shadow-md transition-shadow duration-300 hover:shadow-lg">
                        <h2 className="text-2xl font-semibold mb-2 text-gray-800">Real-Time Project Updates</h2>
                        <p className="text-gray-600">
                            A centralized dashboard providing real-time updates for all members of a family .
                        </p>
                        <div className="mt-4 text-lg text-gray-700">
                            <p>Status: Ongoing</p>
                            <p>Last Update: 2 hours ago</p>
                        </div>
                    </div>
                </div>

            </div>




        </div>



    );




}

export default Home