# SCUBE Technologies - Code Overview & Structure

## 📋 Project Summary

A clean, well-structured Flutter application for SCUBE Technologies' Control and Monitoring System. The app features an animated splash screen with login functionality, two main dashboard screens with energy monitoring data, and a comprehensive navigation system.

## 🏗️ Architecture Overview

### **Clean Architecture Principles**
- **Separation of Concerns**: Each component has a single responsibility
- **Reusability**: Components designed for reuse across screens
- **Maintainability**: Clear structure with centralized constants
- **Scalability**: Easy to extend with new features

### **Project Structure**
```
lib/
├── core/                           # Core application logic
│   ├── constants/                  # Application constants
│   │   ├── app_colors.dart        # Color palette
│   │   ├── app_strings.dart       # All text strings
│   │   ├── app_text_styles.dart   # Typography styles
│   │   └── app_routes.dart        # Route definitions
│   └── utils/
│       └── image_assets.dart      # Asset path constants
├── widgets/                        # Reusable UI components
│   ├── custom_app_bar.dart        # Consistent app bar
│   ├── navigation_banner.dart     # Navigation prompts
│   ├── info_tile.dart            # Information display tiles
│   ├── data_list_tile.dart       # Data list components
│   ├── action_grid_tile.dart     # Action button tiles
│   ├── detail_tile.dart          # Detail information tiles
│   ├── energy_item.dart          # Energy data components
│   ├── lt01_card.dart            # LT01 energy cards
│   ├── data_table_widget.dart    # Data comparison tables
│   ├── weather_banner.dart       # Time-based weather display
│   └── electricity_summary_card.dart # Electricity overview
├── screens/                        # Application screens
│   ├── splash_screen.dart         # Login/splash screen
│   ├── screen_1.dart             # Main dashboard
│   └── screen_2.dart             # Secondary dashboard
└── main.dart                      # Application entry point
```

## 🎨 Design System

### **Color Palette**
- **Primary Blue**: `#0096FC` - Main brand color
- **Dark Blue Text**: `#111827` - Primary text
- **Cyan Banner**: `#06B6D4` - Navigation elements
- **Background Grey**: `#d7e3f1` - Screen backgrounds
- **Light Indigo Border**: `#C7D2FE` - Borders and accents
- **Active Tab Blue**: `#0EA5E9` - Active states

### **Typography System**
- **Font Family**: Google Fonts Inter
- **Hierarchical Styles**: Title, subtitle, body, caption variants
- **Consistent Weights**: 400 (regular), 500 (medium), 600 (semibold), 700 (bold)
- **Responsive Sizing**: 9px to 28px range

### **Component Design**
- **Consistent Spacing**: 8px, 12px, 16px, 24px grid system
- **Border Radius**: 6px, 8px, 10px, 12px for different components
- **Shadow System**: Subtle shadows with 0.02-0.08 opacity
- **Icon Size**: 16px, 22px, 24px, 26px, 28px standard sizes

## 🧩 Component Architecture

### **Core Components**

#### **CustomAppBar**
- Consistent header across all screens
- Back button with customizable action
- Notification indicator with red dot
- Title with consistent typography

#### **NavigationBanner**
- Clickable navigation prompts
- Cyan background with white text
- Chevron right indicator
- Customizable tap actions

#### **InfoTile**
- Compact information display
- Icon + title + subtitle layout
- Error handling for missing images
- Responsive text scaling

#### **DataListTile**
- Complex data display with status
- Active/inactive styling
- Expandable data rows
- Status color indicators

### **Specialized Components**

#### **Lt01Card**
- Energy data display card
- 2x2 grid layout for energy items
- Header with capacity information
- Color-coded background indicators

#### **ElectricitySummaryCard**
- Tabbed interface (Summary/SLD/Data)
- Toggle switches (Source/Load)
- Integrated chart display
- Data list integration

#### **WeatherBanner**
- Time-based dynamic content
- Automatic asset selection
- 11:00-12:00: Cloudy weather
- 12:00-13:00: Sunny weather
- 14:30-15:30: Night/moon weather

#### **DataTableWidget**
- Yesterday vs Today comparison
- Alternating row colors
- Responsive column layout
- Consistent data formatting

## 📱 Screen Architecture

### **SplashScreen**
- **Purpose**: App entry point with login
- **Features**: 
  - Animated logo presentation
  - Sliding login modal (2-second delay)
  - Username/password fields
  - Login and register actions
- **Navigation**: Routes to Screen1 on login

### **Screen1 (Main Dashboard)**
- **Purpose**: Primary energy monitoring interface
- **Components**:
  - 6 info tiles (3x2 grid)
  - Time-based weather banner
  - Yesterday/Today data table
  - PV module information
  - 6 detail tiles (2x3 grid)
  - 2 LT01 energy cards
- **Navigation**: Routes to Screen2, back to Splash

### **Screen2 (Secondary Dashboard)**
- **Purpose**: Electricity summary and actions
- **Components**:
  - Electricity summary card with tabs
  - 3 data list tiles
  - 6 action grid tiles (2x3 grid)
- **Navigation**: Routes back to Screen1

## 🔄 Navigation Flow

```
SplashScreen → Screen1 → Screen2
     ↑           ↑         ↓
     └───────────┴─────────┘
```

### **Navigation Implementation**
- **Named Routes**: Clean route management
- **Route Constants**: Centralized in `AppRoutes`
- **Navigation Methods**:
  - `pushReplacementNamed()`: For login flow
  - `pushNamed()`: For forward navigation
  - `pop()`: For back navigation

### **Route Definitions**
- `/splash`: SplashScreen
- `/screen1`: Screen1 (Main Dashboard)
- `/screen2`: Screen2 (Secondary Dashboard)

## 📊 Data Management

### **Static Data Structure**
- Energy values and labels
- Table data (yesterday/today comparisons)
- Action items and their icons
- Status indicators and colors

### **Dynamic Content**
- Time-based weather display
- Tab and toggle states
- Navigation states
- Animation states

## 🎯 Key Features

### **Responsive Design**
- Adaptive layouts for different screen sizes
- Flexible grid systems
- Scalable text with FittedBox
- Responsive spacing and sizing

### **Error Handling**
- Image loading fallbacks
- Icon placeholders for missing assets
- Graceful degradation

### **Performance Optimization**
- Stateless widgets where possible
- Efficient ListView and GridView usage
- Optimized image loading
- Minimal rebuilds

### **User Experience**
- Smooth animations (splash modal)
- Consistent touch feedback
- Clear visual hierarchy
- Intuitive navigation patterns

## 🔧 Development Guidelines

### **Adding New Components**
1. Create in appropriate `lib/widgets/` file
2. Import required constants
3. Use existing color and text style constants
4. Include error handling for images
5. Add onTap callbacks for interactivity

### **Adding New Strings**
1. Add to `AppStrings` class
2. Use descriptive constant names
3. Group related strings together
4. Update components to use new constants

### **Adding New Styles**
1. Add to `AppTextStyles` class
2. Follow existing naming conventions
3. Use consistent Google Fonts configuration
4. Consider responsive sizing

### **Adding New Routes**
1. Add route constant to `AppRoutes`
2. Update main.dart routes map
3. Use route constants in navigation calls
4. Test navigation flow

## 🚀 Build & Deployment

### **Dependencies**
- `flutter`: SDK framework
- `google_fonts`: Typography system
- Standard Flutter material design components

### **Assets**
- Images stored in `assets/` directory
- Centrally managed in `ImageAssets` class
- Error handling for missing assets

### **Performance Considerations**
- Optimized widget tree structure
- Efficient state management
- Minimal external dependencies
- Clean separation of concerns

## 📈 Future Enhancements

### **Potential Improvements**
- State management (Provider/Bloc)
- API integration for dynamic data
- Internationalization (i18n)
- Dark theme support
- Offline data caching
- Push notifications
- Advanced animations

### **Scalability Features**
- Modular architecture supports easy expansion
- Constants system ready for localization
- Component library for consistent UI
- Clean navigation system for new screens

This architecture provides a solid foundation for a maintainable, scalable Flutter application while maintaining clean code principles and excellent user experience.