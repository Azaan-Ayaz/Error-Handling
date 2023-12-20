////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
import React from 'react';
import { motion } from 'framer-motion';
import Layout from './../../Components/Layout/Layout';
import { CiLock } from 'react-icons/ci';
import { IoPersonSharp } from 'react-icons/io5';

const Login = () => {
  const backgroundImageUrl =
    'https://rare-gallery.com/uploads/posts/585295-blue-controller.jpg';

  const backgroundStyle = {
    backgroundImage: `url(${backgroundImageUrl})`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
  };

  const borderVariants = {
    hidden: { opacity: 0, scale: 0 },
    visible: { opacity: 1, scale: 1, transition: { duration: 1.5 } }, // Adjust the duration here
  };

  return (
    <Layout>
      <div className='flex items-center justify-center min-h-[80vh]' style={backgroundStyle}>
        <motion.div
          className='w-96 h-[60vh] rounded-md flex flex-col items-center bg-black bg-opacity-75 p-8'
          initial='hidden'
          animate='visible'
          variants={borderVariants}
        >
          <div className='text-[40px] mt-7 underline text-orange-500 font-orbitron font-semibold'>Login</div>
          <form className='mt-6 w-full max-w-md'>
            <div className='mb-4'>
              <label htmlFor='Email' className='text-orange-500 text-lg font-semibold mb-2 flex items-center'>
                <IoPersonSharp className='w-5 h-5 mr-1 flex align-text-bottom '/>Email
              </label>
              <input
                type='text'
                className='border-2 rounded-md p-2 w-full'
                placeholder='Enter your email'
              />
            </div>
            <div className='mb-6'>
              <label
                htmlFor='Password'
                className='text-orange-500 flex text-lg font-semibold mb-2 items-center'
              >
                <CiLock className='w-5 h-5 mr-1 flex align-text-bottom' />
                Password
              </label>
              <input
                type='password'
                className='border-2 rounded-md p-2 w-full'
                placeholder='Enter your password'
              />
            </div>
            <div className='flex justify-center'>
              <button className='bg-orange-500 text-white text-2xl p-2 rounded-md font-semibold hover:bg-orange-800 mt-3 transition duration-300'>
                Login
              </button>
            </div>
          </form>
        </motion.div>
      </div>
    </Layout>
  );
};

export default Login;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

import React from 'react';
import Layout from '../Components/Layout/Layout';

const Error = () => {
  const backgroundImageUrl = 'https://i.pinimg.com/originals/07/1e/69/071e69f707665dd8ccae1429878e0800.jpg';

  const backgroundStyle = {
    backgroundImage: `url(${backgroundImageUrl})`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    minHeight: '100vh',
  };

  return (
    <Layout>
      <div className='flex items-center min-h-[20vh] justify-center' style={backgroundStyle}>
        <div className='w-full max-w-xl bg-black bg-opacity-70 p-8 rounded-md text-center'>
          <div className='text-6xl font-bold text-orange-500 mb-6'>GAME OVER</div>
          <p className='text-lg text-gray-300'>
            Unfortunately, something went wrong. Please try again later.
          </p>
          {/* Add additional content or links as needed */}
        </div>
      </div>
    </Layout>
  );
};

export default Error;
