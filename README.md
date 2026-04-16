# AI-Powered Pneumothorax Detection Using Machine Learning & Deep Learning

## Project Overview
This project focuses on building a predictive analytics solution to detect pneumothorax (lung collapse) from medical imaging data using advanced machine learning and deep learning techniques. The goal is to develop a model capable of accurately identifying the presence and location of pneumothorax from chest X-ray images, supporting early diagnosis and improving clinical decision-making.

---

## Objective
- Predict the presence of pneumothorax in medical images  
- Generate segmentation masks to identify affected regions  
- Achieve a target accuracy of ≥75% for clinical relevance  

---

## Dataset Description
- Medical imaging dataset in DICOM format  
- Key features:
  - `ImageId`: Unique identifier for each image  
  - `EncodedPixels`: Run-Length Encoded (RLE) masks indicating pneumothorax regions  
- Images without pneumothorax are labeled with `-1`  
- Dataset includes multiple annotations per image  

---

## Data Preprocessing
- Initial dataset: 11,582 rows  
- Removed inconsistencies and handled:
  - Duplicate ImageIds with multiple annotations  
  - Combined RLE masks into a unified representation  
- Final dataset: 10,675 clean records  
- Extracted DICOM metadata:
  - Patient Age  
  - Sex  
  - View Position (AP/PA)  
- Merged imaging data with metadata for enhanced analysis  

---

## Exploratory Data Analysis (EDA)

### Key Insights:
- Age Distribution: Majority between 40–60 years  
- Gender Distribution:
  - Male: ~55%  
  - Female: ~45%  
- View Position:
  - PA views more common than AP  
- Pneumothorax Cases:
  - Present: ~22.3%  
  - Absent: ~77.7%  

---

## Modeling Approaches

### 1. Convolutional Neural Network (CNN)
- Used for image classification and segmentation  
- Includes:
  - Data augmentation  
  - Normalization  
  - Dropout & batch normalization  

### 2. Decision Tree
- Uses structured metadata features  
- Focus on interpretability  

### 3. Random Forest
- Ensemble method for improved accuracy  
- Reduces overfitting  

### 4. Support Vector Machine (SVM)
- Handles high-dimensional data  
- Uses PCA and kernel tricks  

---

## Tech Stack
- Languages: Python, R  
- Libraries:
  - NumPy, Pandas  
  - Scikit-learn  
  - TensorFlow / Keras  
  - OpenCV  
  - Matplotlib, Seaborn  

---

## Future Enhancements
- Improve model accuracy  
- Use advanced architectures (U-Net, ResNet)  
- Deploy as a real-time diagnostic system  

---

## Applications
- AI-assisted radiology  
- Early disease detection  
- Healthcare analytics  

---

## References
- Medical imaging and deep learning research papers  
- DICOM imaging standards  
