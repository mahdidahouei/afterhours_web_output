import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_nl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('nl'),
  ];

  /// No description provided for @utrechtInPocket.
  ///
  /// In en, this message translates to:
  /// **'Utrecht\nin your pocket.'**
  String get utrechtInPocket;

  /// No description provided for @onBoardingDescription.
  ///
  /// In en, this message translates to:
  /// **'Afterhours is a directory of all restaurant in the city, designed to help you find the perfect dining spot every time 😊.'**
  String get onBoardingDescription;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signUpDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign up to get\nstarted.'**
  String get signUpDescription;

  /// No description provided for @signInIfAlreadyAUser.
  ///
  /// In en, this message translates to:
  /// **'Already a user? sign in'**
  String get signInIfAlreadyAUser;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @emailEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email.'**
  String get emailEmptyError;

  /// No description provided for @emailInvalidError.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address.'**
  String get emailInvalidError;

  /// No description provided for @mobileEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number.'**
  String get mobileEmptyError;

  /// No description provided for @mobileInvalidError.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid mobile number.'**
  String get mobileInvalidError;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue'**
  String get signUpTitle;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @termsAndConditionsAgreement_prefix.
  ///
  /// In en, this message translates to:
  /// **'By signing up you agree with Afterhours '**
  String get termsAndConditionsAgreement_prefix;

  /// No description provided for @termsAndConditionsAgreement_link.
  ///
  /// In en, this message translates to:
  /// **'\nterms and conditions'**
  String get termsAndConditionsAgreement_link;

  /// No description provided for @termsAndConditionsAgreement_suffix.
  ///
  /// In en, this message translates to:
  /// **''**
  String get termsAndConditionsAgreement_suffix;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Please check your network connection.'**
  String get networkError;

  /// No description provided for @unauthorizedError.
  ///
  /// In en, this message translates to:
  /// **'Your are logged out. Please log in again.'**
  String get unauthorizedError;

  /// No description provided for @cacheError.
  ///
  /// In en, this message translates to:
  /// **'There was a problem accessing local data.'**
  String get cacheError;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get unknownError;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select you country'**
  String get selectCountry;

  /// No description provided for @searchCountries.
  ///
  /// In en, this message translates to:
  /// **'Search for country name or code'**
  String get searchCountries;

  /// No description provided for @noClipBoardData.
  ///
  /// In en, this message translates to:
  /// **'Your clipboard is empty'**
  String get noClipBoardData;

  /// No description provided for @otpTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify your phone number'**
  String get otpTitle;

  /// No description provided for @invalidOtp.
  ///
  /// In en, this message translates to:
  /// **'Your code is incorrect, please try again.'**
  String get invalidOtp;

  /// No description provided for @otpLengthError.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid otp code.'**
  String get otpLengthError;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @didNotReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive a code yet?'**
  String get didNotReceiveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'send a new code'**
  String get resendCode;

  /// No description provided for @profileSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Add your basic details'**
  String get profileSetupTitle;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @fullNameEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your full name'**
  String get fullNameEmptyError;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @maps.
  ///
  /// In en, this message translates to:
  /// **'Maps'**
  String get maps;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @allFilters.
  ///
  /// In en, this message translates to:
  /// **'All filters'**
  String get allFilters;

  /// No description provided for @neighbourhood.
  ///
  /// In en, this message translates to:
  /// **'Neighbourhood'**
  String get neighbourhood;

  /// No description provided for @cuisine.
  ///
  /// In en, this message translates to:
  /// **'Cuisine'**
  String get cuisine;

  /// No description provided for @applyFilters.
  ///
  /// In en, this message translates to:
  /// **'Apply filters'**
  String get applyFilters;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @restaurantType.
  ///
  /// In en, this message translates to:
  /// **'Restaurant type'**
  String get restaurantType;

  /// No description provided for @citySelection.
  ///
  /// In en, this message translates to:
  /// **'City selection'**
  String get citySelection;

  /// No description provided for @cityNeighborhood.
  ///
  /// In en, this message translates to:
  /// **'Search for a city..'**
  String get cityNeighborhood;

  /// No description provided for @mmNothingFound.
  ///
  /// In en, this message translates to:
  /// **'Mmm nothing found..'**
  String get mmNothingFound;

  /// No description provided for @cityNotActive.
  ///
  /// In en, this message translates to:
  /// **'Not available in this city yet'**
  String get cityNotActive;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @trySthNew.
  ///
  /// In en, this message translates to:
  /// **'Try something new.'**
  String get trySthNew;

  /// No description provided for @findWhatFits.
  ///
  /// In en, this message translates to:
  /// **'Find what fits.'**
  String get findWhatFits;

  /// No description provided for @backToListView.
  ///
  /// In en, this message translates to:
  /// **'Back to list view'**
  String get backToListView;

  /// No description provided for @noRestaurantsFound.
  ///
  /// In en, this message translates to:
  /// **'No restaurants found'**
  String get noRestaurantsFound;

  /// No description provided for @changeFilters.
  ///
  /// In en, this message translates to:
  /// **'Change filters'**
  String get changeFilters;

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// No description provided for @removeFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'Remove from favourites'**
  String get removeFromFavorites;

  /// No description provided for @removeFromFavoritesDescription.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this restaurant from your favourites?'**
  String get removeFromFavoritesDescription;

  /// No description provided for @yesRemoveIt.
  ///
  /// In en, this message translates to:
  /// **'Yes, remove it'**
  String get yesRemoveIt;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @timeBlocks.
  ///
  /// In en, this message translates to:
  /// **'Time blocks'**
  String get timeBlocks;

  /// No description provided for @timeBlocksDescription.
  ///
  /// In en, this message translates to:
  /// **'The percentages next to each time block is your discount rate. This rate will be applied to your final bill at the restaurant.'**
  String get timeBlocksDescription;

  /// No description provided for @loggedIn.
  ///
  /// In en, this message translates to:
  /// **'You are now logged in'**
  String get loggedIn;

  /// No description provided for @itsGoodTime.
  ///
  /// In en, this message translates to:
  /// **'It\'s always a good time.'**
  String get itsGoodTime;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'version'**
  String get version;

  /// No description provided for @designedWithLove.
  ///
  /// In en, this message translates to:
  /// **'Designed with love.'**
  String get designedWithLove;

  /// No description provided for @howYouFeel.
  ///
  /// In en, this message translates to:
  /// **'How do you feel about Afterhours?'**
  String get howYouFeel;

  /// No description provided for @anySuggestions.
  ///
  /// In en, this message translates to:
  /// **'Do you have any suggestions for us?'**
  String get anySuggestions;

  /// No description provided for @feedbackSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Feedback Submitted'**
  String get feedbackSubmitted;

  /// No description provided for @feedbackSubmittedDescription.
  ///
  /// In en, this message translates to:
  /// **'Thanks for your feedback! we are working to improve the app experience week by week for our diners.'**
  String get feedbackSubmittedDescription;

  /// No description provided for @closeContinue.
  ///
  /// In en, this message translates to:
  /// **'Close and continue'**
  String get closeContinue;

  /// No description provided for @feedbackPerDay.
  ///
  /// In en, this message translates to:
  /// **'You can share your feedback once per day'**
  String get feedbackPerDay;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @theWordNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get theWordNew;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get accountSettings;

  /// No description provided for @editAccount.
  ///
  /// In en, this message translates to:
  /// **'Edit account'**
  String get editAccount;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @signOutDescription.
  ///
  /// In en, this message translates to:
  /// **'You are signing out of your account, are you sure you want to continue?'**
  String get signOutDescription;

  /// No description provided for @customerSupport.
  ///
  /// In en, this message translates to:
  /// **'Customer support'**
  String get customerSupport;

  /// No description provided for @inquiries.
  ///
  /// In en, this message translates to:
  /// **'Inquiries'**
  String get inquiries;

  /// No description provided for @inquiriesDescription.
  ///
  /// In en, this message translates to:
  /// **'Please write us an email to the address below with your inquiry.'**
  String get inquiriesDescription;

  /// No description provided for @responseTime.
  ///
  /// In en, this message translates to:
  /// **'We typically answer within 24 hours'**
  String get responseTime;

  /// No description provided for @emailUs.
  ///
  /// In en, this message translates to:
  /// **'Email us'**
  String get emailUs;

  /// No description provided for @openEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'Would you like to open your email app?'**
  String get openEmailDescription;

  /// No description provided for @yesOpenEmail.
  ///
  /// In en, this message translates to:
  /// **'Yes, open email app'**
  String get yesOpenEmail;

  /// No description provided for @openMap.
  ///
  /// In en, this message translates to:
  /// **'Open in Maps'**
  String get openMap;

  /// No description provided for @openMapDescription.
  ///
  /// In en, this message translates to:
  /// **'Do you want to open this address in Maps?'**
  String get openMapDescription;

  /// No description provided for @yesOpenMaps.
  ///
  /// In en, this message translates to:
  /// **'Yes, open in Maps'**
  String get yesOpenMaps;

  /// No description provided for @callTheRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Call The Restaurant'**
  String get callTheRestaurant;

  /// No description provided for @callDescription.
  ///
  /// In en, this message translates to:
  /// **'Do you want to call the restaurant via phone?'**
  String get callDescription;

  /// No description provided for @yesCall.
  ///
  /// In en, this message translates to:
  /// **'Yes, call restaurant'**
  String get yesCall;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get goBack;

  /// No description provided for @likeToDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'I’d like to delete my account'**
  String get likeToDeleteAccount;

  /// No description provided for @deleteAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to permanently delete your account?'**
  String get deleteAccountDescription;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get profileUpdated;

  /// No description provided for @editProfileDescription.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been successfully updated.'**
  String get editProfileDescription;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @appSetting.
  ///
  /// In en, this message translates to:
  /// **'App setting'**
  String get appSetting;

  /// No description provided for @appTheme.
  ///
  /// In en, this message translates to:
  /// **'App theme'**
  String get appTheme;

  /// No description provided for @helpUs.
  ///
  /// In en, this message translates to:
  /// **'Help Us Get Better'**
  String get helpUs;

  /// No description provided for @giveFeedback.
  ///
  /// In en, this message translates to:
  /// **'Share your suggestions'**
  String get giveFeedback;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @favoriteRestaurants.
  ///
  /// In en, this message translates to:
  /// **'Favorite restaurants'**
  String get favoriteRestaurants;

  /// No description provided for @myBookings.
  ///
  /// In en, this message translates to:
  /// **'My bookings'**
  String get myBookings;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @aboutAfterhours.
  ///
  /// In en, this message translates to:
  /// **'About Afterhours'**
  String get aboutAfterhours;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get termsAndConditions;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @allCaughtUp.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up'**
  String get allCaughtUp;

  /// No description provided for @notificationDescription.
  ///
  /// In en, this message translates to:
  /// **'Your notifications will appear here'**
  String get notificationDescription;

  /// No description provided for @yesDeleteIt.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete it'**
  String get yesDeleteIt;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// No description provided for @aa.
  ///
  /// In en, this message translates to:
  /// **'Aa'**
  String get aa;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// A plural message
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No reviews} =1{1 review} other{{count} reviews}}'**
  String nReviews(num count);

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @theWordOf.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get theWordOf;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// No description provided for @photos.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get photos;

  /// No description provided for @priceRange.
  ///
  /// In en, this message translates to:
  /// **'Price range'**
  String get priceRange;

  /// No description provided for @ranking.
  ///
  /// In en, this message translates to:
  /// **'Ranking'**
  String get ranking;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @specialOffer.
  ///
  /// In en, this message translates to:
  /// **'Special offer'**
  String get specialOffer;

  /// No description provided for @knowUsBetter.
  ///
  /// In en, this message translates to:
  /// **'Know us better'**
  String get knowUsBetter;

  /// No description provided for @backToRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Go back to restaurants'**
  String get backToRestaurant;

  /// No description provided for @getDirections.
  ///
  /// In en, this message translates to:
  /// **'Get directions'**
  String get getDirections;

  /// No description provided for @callRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Call restaurant'**
  String get callRestaurant;

  /// No description provided for @openingHours.
  ///
  /// In en, this message translates to:
  /// **'Opening hours'**
  String get openingHours;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'today'**
  String get today;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @whatPlaceOffers.
  ///
  /// In en, this message translates to:
  /// **'What this place offers'**
  String get whatPlaceOffers;

  /// Indicates the current step out of the total number of steps.
  ///
  /// In en, this message translates to:
  /// **'Step {step} of {total}'**
  String stepOfTotal(int step, int total);

  /// No description provided for @bookingDetails.
  ///
  /// In en, this message translates to:
  /// **'Booking details'**
  String get bookingDetails;

  /// No description provided for @guestDetails.
  ///
  /// In en, this message translates to:
  /// **'Guest details'**
  String get guestDetails;

  /// No description provided for @loggedOut.
  ///
  /// In en, this message translates to:
  /// **'You are logged out'**
  String get loggedOut;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @bookTable.
  ///
  /// In en, this message translates to:
  /// **'Book a table'**
  String get bookTable;

  /// No description provided for @walkIn.
  ///
  /// In en, this message translates to:
  /// **'Walk-in'**
  String get walkIn;

  /// No description provided for @thisIsWalkInRestaurant.
  ///
  /// In en, this message translates to:
  /// **'This is a walk-in restaurant'**
  String get thisIsWalkInRestaurant;

  /// No description provided for @walkInRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Walk in restaurant'**
  String get walkInRestaurant;

  /// No description provided for @reservable.
  ///
  /// In en, this message translates to:
  /// **'Reservable'**
  String get reservable;

  /// No description provided for @priceRangeCheap.
  ///
  /// In en, this message translates to:
  /// **'€20 or less'**
  String get priceRangeCheap;

  /// No description provided for @priceRangeNormal.
  ///
  /// In en, this message translates to:
  /// **'€20-40'**
  String get priceRangeNormal;

  /// No description provided for @priceRangeExpensive.
  ///
  /// In en, this message translates to:
  /// **'€40-80'**
  String get priceRangeExpensive;

  /// No description provided for @priceRangeVeryExpensive.
  ///
  /// In en, this message translates to:
  /// **'€80 or more'**
  String get priceRangeVeryExpensive;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @restaurantClosedThisDay.
  ///
  /// In en, this message translates to:
  /// **'Restaurant is closed on this day'**
  String get restaurantClosedThisDay;

  /// No description provided for @serverLoadError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while loading data from the server.'**
  String get serverLoadError;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @selectDateTime.
  ///
  /// In en, this message translates to:
  /// **'Select your date and time'**
  String get selectDateTime;

  /// No description provided for @numberOfGuests.
  ///
  /// In en, this message translates to:
  /// **'Number of guests'**
  String get numberOfGuests;

  /// Number of people
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No people} =1{1 person} other{{count} people}}'**
  String nPeople(int count);

  /// Number of guests
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No Guests} =1{1 Guest} other{{count} Guests}}'**
  String nGuests(int count);

  /// No description provided for @completeBooking.
  ///
  /// In en, this message translates to:
  /// **'Complete booking'**
  String get completeBooking;

  /// No description provided for @notesAndRequests.
  ///
  /// In en, this message translates to:
  /// **'Notes and requests'**
  String get notesAndRequests;

  /// No description provided for @allRestaurants.
  ///
  /// In en, this message translates to:
  /// **'All restaurants'**
  String get allRestaurants;

  /// No description provided for @viewBookings.
  ///
  /// In en, this message translates to:
  /// **'View bookings'**
  String get viewBookings;

  /// No description provided for @seeOtherTimeslots.
  ///
  /// In en, this message translates to:
  /// **'See other time-slots'**
  String get seeOtherTimeslots;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchTextFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Search with Restaurant name'**
  String get searchTextFieldLabel;

  /// No description provided for @bookedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Booking confirmed'**
  String get bookedSuccessfully;

  /// No description provided for @bookSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your booking has been successfully submitted!'**
  String get bookSuccessMessage;

  /// No description provided for @bookUnsuccessful.
  ///
  /// In en, this message translates to:
  /// **'Unsuccessful Booking'**
  String get bookUnsuccessful;

  /// No description provided for @unsuccessfulBookMessage.
  ///
  /// In en, this message translates to:
  /// **'Oops! It looks like someone just booked this time-slot earlier than you.'**
  String get unsuccessfulBookMessage;

  /// Time expression for seconds ago
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 second ago} other{{count} seconds ago}}'**
  String nSecondsAgo(int count);

  /// Time expression for minutes ago
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute ago} other{{count} minutes ago}}'**
  String nMinutesAgo(int count);

  /// Time expression for hours ago
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String nHoursAgo(int count);

  /// Time expression for days ago, shows 'Yesterday' when count = 1
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Yesterday} other{{count} days ago}}'**
  String nDaysAgo(int count);

  /// Shown when the user tries to book without being logged in
  ///
  /// In en, this message translates to:
  /// **'You need to log in before you can make a booking.'**
  String get needLoginToBook;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @noUpcomingBookings.
  ///
  /// In en, this message translates to:
  /// **'You do not have any upcoming\nbookings.'**
  String get noUpcomingBookings;

  /// No description provided for @noHistoryBookings.
  ///
  /// In en, this message translates to:
  /// **'Your booking history will\nappear here.'**
  String get noHistoryBookings;

  /// No description provided for @signedOut.
  ///
  /// In en, this message translates to:
  /// **'You are signed out.'**
  String get signedOut;

  /// No description provided for @needLoginToViewBookings.
  ///
  /// In en, this message translates to:
  /// **'Please log in to view your\nlist of bookings.'**
  String get needLoginToViewBookings;

  /// No description provided for @goToSignInPage.
  ///
  /// In en, this message translates to:
  /// **'Go to the login page'**
  String get goToSignInPage;

  /// No description provided for @myBookingsNote.
  ///
  /// In en, this message translates to:
  /// **'Note: Bookings made through the restaurant website will not be displayed here.'**
  String get myBookingsNote;

  /// No description provided for @makeBooking.
  ///
  /// In en, this message translates to:
  /// **'Make a booking'**
  String get makeBooking;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @canceledByRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Canceled by restaurant'**
  String get canceledByRestaurant;

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get confirmed;

  /// No description provided for @attended.
  ///
  /// In en, this message translates to:
  /// **'Attended'**
  String get attended;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get canceled;

  /// No description provided for @noShow.
  ///
  /// In en, this message translates to:
  /// **'You did not go to this booking'**
  String get noShow;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guest;

  /// No description provided for @modify.
  ///
  /// In en, this message translates to:
  /// **'Modify'**
  String get modify;

  /// No description provided for @cancelBooking.
  ///
  /// In en, this message translates to:
  /// **'Cancel booking'**
  String get cancelBooking;

  /// No description provided for @signMeUp.
  ///
  /// In en, this message translates to:
  /// **'Sign me up'**
  String get signMeUp;

  /// No description provided for @completeSignUp.
  ///
  /// In en, this message translates to:
  /// **'Complete sign up'**
  String get completeSignUp;

  /// No description provided for @needLogin.
  ///
  /// In en, this message translates to:
  /// **'You need to login'**
  String get needLogin;

  /// No description provided for @noTimeslotsToday.
  ///
  /// In en, this message translates to:
  /// **'No timeslots today!'**
  String get noTimeslotsToday;

  /// No description provided for @noAvailabilityToday.
  ///
  /// In en, this message translates to:
  /// **'No availability remaining today'**
  String get noAvailabilityToday;

  /// No description provided for @noTimeslotsDescription.
  ///
  /// In en, this message translates to:
  /// **'There are no time-slots available on this day,\nplease try selecting a different day.'**
  String get noTimeslotsDescription;

  /// No description provided for @checkOtherDays.
  ///
  /// In en, this message translates to:
  /// **'Check other days'**
  String get checkOtherDays;

  /// No description provided for @bookingUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your booking has been successfully updated!'**
  String get bookingUpdated;

  /// No description provided for @bookingUpdatedDescription.
  ///
  /// In en, this message translates to:
  /// **'Your booking has been successfully updated!'**
  String get bookingUpdatedDescription;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @searching.
  ///
  /// In en, this message translates to:
  /// **'Searching'**
  String get searching;

  /// No description provided for @noWrittenReview.
  ///
  /// In en, this message translates to:
  /// **'No guest comments.'**
  String get noWrittenReview;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @mapView.
  ///
  /// In en, this message translates to:
  /// **'Map view'**
  String get mapView;

  /// No description provided for @accessDenied.
  ///
  /// In en, this message translates to:
  /// **'Access denied'**
  String get accessDenied;

  /// No description provided for @accessDeniedDescription.
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to access this content.'**
  String get accessDeniedDescription;

  /// No description provided for @serviceMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Service maintenance'**
  String get serviceMaintenance;

  /// No description provided for @serviceMaintenanceDescription.
  ///
  /// In en, this message translates to:
  /// **'Afterhours is under service maintenance for a few hours, we will be back again soon.'**
  String get serviceMaintenanceDescription;

  /// No description provided for @menuItems.
  ///
  /// In en, this message translates to:
  /// **'Menu items'**
  String get menuItems;

  /// No description provided for @verificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @carefullyCuratedRestaurant.
  ///
  /// In en, this message translates to:
  /// **'Carefully Curated\nRestaurant '**
  String get carefullyCuratedRestaurant;

  /// No description provided for @collections.
  ///
  /// In en, this message translates to:
  /// **'Collections'**
  String get collections;

  /// No description provided for @allPlacesConsidered.
  ///
  /// In en, this message translates to:
  /// **'All places considered'**
  String get allPlacesConsidered;

  /// No description provided for @allPlacesConsideredDescription.
  ///
  /// In en, this message translates to:
  /// **'We have collected every spot in the city and\nupdate our directory every month with new spots.'**
  String get allPlacesConsideredDescription;

  /// No description provided for @letsFindPerfectFit.
  ///
  /// In en, this message translates to:
  /// **'Let’s find a perfect fit'**
  String get letsFindPerfectFit;

  /// No description provided for @letsFindPerfectFitDescription.
  ///
  /// In en, this message translates to:
  /// **'Browse freely or use our carefully curated\ncollections to narrow things down.'**
  String get letsFindPerfectFitDescription;

  /// No description provided for @restaurantsCarefullyCurated.
  ///
  /// In en, this message translates to:
  /// **'Restaurant Collections,\nCarefully Curated.'**
  String get restaurantsCarefullyCurated;

  /// No description provided for @enterOtpHere.
  ///
  /// In en, this message translates to:
  /// **'Enter your 5 digit code here'**
  String get enterOtpHere;

  /// No description provided for @oneLastStep.
  ///
  /// In en, this message translates to:
  /// **'One last step'**
  String get oneLastStep;

  /// No description provided for @getInTouch.
  ///
  /// In en, this message translates to:
  /// **'Get in touch'**
  String get getInTouch;

  /// No description provided for @bookANewTable.
  ///
  /// In en, this message translates to:
  /// **'Book a new table'**
  String get bookANewTable;

  /// No description provided for @vibeAndOccasion.
  ///
  /// In en, this message translates to:
  /// **'Vibe & Occasion'**
  String get vibeAndOccasion;

  /// No description provided for @bookATable.
  ///
  /// In en, this message translates to:
  /// **'Book a table'**
  String get bookATable;

  /// No description provided for @aboutThisPlace.
  ///
  /// In en, this message translates to:
  /// **'About this place'**
  String get aboutThisPlace;

  /// No description provided for @whereAreThey.
  ///
  /// In en, this message translates to:
  /// **'Where are they?'**
  String get whereAreThey;

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// No description provided for @savedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Saved successfully'**
  String get savedSuccessfully;

  /// No description provided for @storagePermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Storage permission is required in order to save file.'**
  String get storagePermissionRequired;

  /// No description provided for @openIn.
  ///
  /// In en, this message translates to:
  /// **'Open in'**
  String get openIn;

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// No description provided for @bookAgain.
  ///
  /// In en, this message translates to:
  /// **'Book again'**
  String get bookAgain;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @todaysTimeslots.
  ///
  /// In en, this message translates to:
  /// **'Today\'s time-slots'**
  String get todaysTimeslots;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'nl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'nl':
      return AppLocalizationsNl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
