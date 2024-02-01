// import React from 'react';

// const ShopFromAmazon = () => {
//   // JSON array for multiple products
//   const products = [
//     {
//       product: 'paint',
//       link: 'https://www.amazon.in/Dulux-Refresh-Surface-Washable-surface/dp/B09TZZ48D6/ref=sr_1_2_sspa?crid=2C771K8U1L96H&keywords=asian%2Bpaints&qid=1706761506&sprefix=apints%2Caps%2C189&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1',
//       imageUrl: 'https://m.media-amazon.com/images/I/61P3aL0IufL._SX679_.jpg',
//     },
//     {
//       product: 'sofa',
//       link: 'https://www.amazon.in/AMATA-Marino-Seater-Cushions-Perfect/dp/B0BRNCBF1Y/ref=sr_1_5?crid=36Q74DEC70GBN&keywords=sofa&qid=1706761772&sprefix=sofa%2Caps%2C195&sr=8-5',
//       imageUrl: 'https://m.media-amazon.com/images/I/21BUDdvi-YL._SX300_SY300_QL70_FMwebp_.jpg',
//     },
//     {
//       product: 'dinner table 4 seater',
//       link: 'https://www.amazon.in/SONA-ART-CRAFTS-Furniture-Sheesham/dp/B0C1TGPL9M/ref=sr_1_1_sspa?crid=X71UXNKMQBSX&keywords=dinner+table+4+seater&qid=1706761876&sprefix=dinner%2Caps%2C194&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1',
//       imageUrl: 'https://m.media-amazon.com/images/I/81fTd0YGauL._SX679_.jpg',
//     },
//     {
//       product: 'fan',
//       link: 'https://www.amazon.in/Orient-Electric-Pacific-Decorative-Ceiling/dp/B0BMVF3GZJ/ref=sr_1_2_sspa?crid=28M1KS0UI3YCY&keywords=fans&qid=1706762178&sprefix=fans%2Caps%2C215&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1',
//       imageUrl: 'https://m.media-amazon.com/images/I/41-yVK4oI1L._SX300_SY300_QL70_FMwebp_.jpg',
//     },
//   ];

//   return (
//     <div>
//       <h2>Shop from Amazon</h2>
//       <table style={styles.table}>
//         <thead>
//           <tr>
//             <th style={styles.th}>Product</th>
//             <th style={styles.th}>Link</th>
//             <th style={styles.th}>Image</th>
//           </tr>
//         </thead>
//         <tbody>
//           {/* Iterate through the products array and display product information in table rows */}
//           {products.map((product, index) => (
//             <tr key={index}>
//               <td style={styles.td}>{product.product}</td>
//               <td style={styles.td}><img src={product.imageUrl} alt={`${product.product} image`} style={styles.image} /></td>
//               <td style={styles.td}><a href={product.link} target="_blank" rel="noopener noreferrer" style={styles.link}>{product.link}</a></td>

//             </tr>
//           ))}
//         </tbody>
//       </table>
//     </div>
//   );
// };

// const styles = {
//   table: {
//     width: '100%',
//     borderCollapse: 'collapse',
//     marginTop: '10px',
//   },
//   th: {
//     backgroundColor: '#f2f2f2',
//     padding: '8px',
//     border: '1px solid #ddd',
//     textAlign: 'left',
//   },
//   td: {
//     padding: '8px',
//     border: '1px solid #ddd',
//     textAlign: 'left',
//   },
//   link: {
//     color: '#007bff',
//     textDecoration: 'none',
//   },
//   image: {
//     width: '100px', // Set the width of the image as per your requirement
//     height: 'auto',
//   },
// };

// export default ShopFromAmazon;







import React from 'react';

const ShopFromAmazon = () => {
  // JSON array for multiple products
  const products = [
    {
      product: 'paint',
      link: 'https://www.amazon.in/Dulux-Refresh-Surface-Washable-surface/dp/B09TZZ48D6/ref=sr_1_2_sspa?crid=2C771K8U1L96H&keywords=asian%2Bpaints&qid=1706761506&sprefix=apints%2Caps%2C189&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1',
      imageUrl: 'https://m.media-amazon.com/images/I/41-yVK4oI1L._SX300_SY300_QL70_FMwebp_.jpg',
    },
    {
      product: 'sofa',
      link: 'https://www.amazon.in/AMATA-Marino-Seater-Cushions-Perfect/dp/B0BRNCBF1Y/ref=sr_1_5?crid=36Q74DEC70GBN&keywords=sofa&qid=1706761772&sprefix=sofa%2Caps%2C195&sr=8-5',
      imageUrl: 'https://m.media-amazon.com/images/I/61P3aL0IufL._SX679_.jpg',
    },
    {
      product: 'dinner table 4 seater',
      link: 'https://www.amazon.in/SONA-ART-CRAFTS-Furniture-Sheesham/dp/B0C1TGPL9M/ref=sr_1_1_sspa?crid=X71UXNKMQBSX&keywords=dinner+table+4+seater&qid=1706761876&sprefix=dinner%2Caps%2C194&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1',
      imageUrl: 'https://m.media-amazon.com/images/I/81fTd0YGauL._SX679_.jpg',
    },
    {
      product: 'fan',
      link: 'https://www.amazon.in/Orient-Electric-Pacific-Decorative-Ceiling/dp/B0BMVF3GZJ/ref=sr_1_2_sspa?crid=28M1KS0UI3YCY&keywords=fans&qid=1706762178&sprefix=fans%2Caps%2C215&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1',
      imageUrl: 'https://m.media-amazon.com/images/I/21BUDdvi-YL._SX300_SY300_QL70_FMwebp_.jpg',
    },
  ];

  return (
    <div style={styles.shopContainer}>
      <h2 style={styles.heading}>Shop from Amazon</h2>
      <div style={styles.productCards}>
        {/* Iterate through the products array and display product cards */}
        {products.map((product, index) => (
          <a key={index} href={product.link} target="_blank" rel="noopener noreferrer" style={styles.productCard}>
            <img src={product.imageUrl} alt={`${product.product} image`} style={styles.productImage} />
            <div style={styles.productDetails}>
              <p style={styles.productName}>{product.product}</p>
            </div>
          </a>
        ))}
      </div>
    </div>
  );
};

const styles = {
  shopContainer: {
    margin: '20px',
  },
  heading: {
    fontSize: '24px',
    marginBottom: '20px',
    textAlign: 'center',
    fontWeight: 'bold',
  },
  productCards: {
    display: 'flex',
    justifyContent: 'space-between',
    flexWrap: 'wrap', // Allow cards to wrap to the next line
  },
  productCard: {
    width: '300px',
    marginBottom: '20px',
    border: '1px solid #ddd',
    borderRadius: '8px',
    overflow: 'hidden',
    textDecoration: 'none', // Remove underline from the anchor tag
    color: 'inherit', // Use the default text color
    display: 'block', // Make the anchor tag a block-level element
    transition: 'transform 0.2s ease-in-out',
    '&:hover': {
      transform: 'scale(1.05)', // Scale up the card on hover
    },
  },
  productImage: {
    width: '100%',
    height: '200px',
    objectFit: 'cover',
  },
  productDetails: {
    padding: '16px',
  },
  productName: {
    fontSize: '18px',
    marginBottom: '8px',
  },
};

export default ShopFromAmazon;
