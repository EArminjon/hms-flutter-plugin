/*
 * Copyright 2020-2024. Huawei Technologies Co., Ltd. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License")
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

part of '../../huawei_iap.dart';

/// Represents details about purchased product.
class InAppPurchaseData {
  /// Not present.
  ///
  /// Original Value: -`2147483648`.
  static const int NOT_PRESENT = -2147483648;

  /// Initialized.
  ///
  /// Original Value: `-2147483648`.
  static const int INITIALIZED = -2147483648;

  /// Purchased.
  ///
  /// Original Value: `0`.
  static const int PURCHASED = 0;

  /// Canceled.
  ///
  /// Original Value: `1`.
  static const int CANCELED = 1;

  /// Refunded.
  ///
  /// Original Value: `2`.
  static const int REFUNDED = 2;

  /// Pending.
  ///
  /// Original Value: `3`.
  static const int PENDING = 3;

  /// ID of an app that initiates a purchase.
  int? applicationId;

  /// Indicates whether the subscription is automatically renewed.
  ///
  /// Currently, the value is always false.
  bool? autoRenewing;

  /// Order ID on the Huawei IAP server, which uniquely identifies a transaction and is generated by the Huawei IAP server during payment.
  String? orderId;

  /// Software package name of the app that initiates a purchase.
  String? packageName;

  /// Product ID.
  String? productId;

  /// Product name.
  String? productName;

  /// Purchase time.
  int? purchaseTime;

  /// Order status.
  ///
  /// - `-1`: Initialized and invisible.
  /// - `0`: Purchased.
  /// - `1`: Canceled.
  /// - `2`: Refunded.
  int? purchaseState;

  /// Reserved information on the merchant side, which is passed by the app during payment.
  String? developerPayload;

  /// Purchase token, which uniquely identifies the mapping between a product and a user.
  ///
  /// It is generated by the Huawei IAP server when the payment is complete.
  String? purchaseToken;

  /// Purchase type.
  ///
  /// - `0`: In the sandbox.
  /// - `1`: In the promotion period (currently not supported).
  ///
  /// This parameter is not returned during formal purchase.
  int? purchaseType;

  /// Currency.
  ///
  /// The value must be a currency defined in the ISO 4217 standard, for example, `'USD'`, `'CNY'`, and `'TRY'`.
  String? currency;

  /// Value after the actual price of a product is multiplied by 100.
  ///
  /// The actual price is accurate to two decimal places.
  ///
  /// For example, if the value of this parameter is `501`, the actual product price is `5.01`.
  int? price;

  /// Country or region code of a user service area.
  ///
  /// The value must comply with the ISO 3166 standard, for example: `'US'`, `'CN'`, and `'TR'`.
  String? country;

  /// Order ID generated by the Huawei IAP server during fee deduction on the previous renewal.
  String? lastOrderId;

  /// ID of the subscription group to which a subscription belongs.
  String? productGroup;

  /// First fee deduction timestamp since 00:00:00 on January 1, 1970, in millionseconds.
  int? oriPurchaseTime;

  /// Subscription ID.
  String? subscriptionId;

  /// Purchase quantity.
  int? quantity;

  /// Days of a paid subscription, excluding the free trial period and promotion period.
  int? daysLasted;

  /// Number of successful standard renewal periods (that is, renewal periods without promotion).
  ///
  /// If the parameter is set to `0` or left empty, no renewal has been performed successfully.
  int? numOfPeriods;

  /// Number of successful renewal periods with promotion.
  int? numOfDiscounts;

  /// Subscription expiration timestamp.
  ///
  /// For an automatic renewal receipt where the fee has been deducted successfully, this parameter indicates the renewal date or expiration date. If the value is a past time for the latest receipt of a product, the subscription has expired.
  int? expirationDate;

  /// Reason why a subscription expires.
  ///
  /// - `1`: Canceled by a user
  /// - `2`: Product being unavailable
  /// - `3`: Abnormal user signing information
  /// - `4`: Billing error
  /// - `5`: Price increase disagreed by a user
  /// - `6`: Unknown error
  int? expirationIntent;

  /// Indicates whether the system still tries to renew an expired subscription.
  int? retryFlag;

  /// Indicates whether a subscription is in the renewal period with promotion.
  int? introductoryFlag;

  /// Indicates whether a subscription is in the free trial period.
  int? trialFlag;

  /// Subscription cancellation timestamp.
  ///
  /// This parameter has a value when a user makes a complaint and cancels a subscription through the customer service, or when a user performs subscription upgrade or cross-grade that immediately takes effect and cancels the previous receipt of the original subscription.
  int? cancelTime;

  /// Reason why a subscription is canceled.
  ///
  /// - `0`: Others. For example, a user mistakenly purchases a subscription and has to cancel it.
  /// - `1`: A user encounters a problem within the app and cancels the subscription.
  /// - `2`: A user performs subscription upgrade or cross-grade.
  int? cancelReason;

  /// App information, which is reserved.
  String? appInfo;

  /// Indicates whether a user has disabled the subscription notification function.
  int? notifyClosed;

  /// Renewal status.
  ///
  /// - `1`: The subscription renewal is normal.
  /// - `0`: The user has canceled subscription renewal.
  int? renewStatus;

  /// User opinion on the price increase of a product.
  ///
  /// - `1`: The user has agreed to the price increase.
  /// - `0`: The user does not take any action. After the subscription expires, it becomes invalid.
  int? priceConsentStatus;

  /// Renewal price.
  int? renewPrice;

  /// - `true`: A user has been charged for a product, the product has not expired, and no refund has been made. In this case, you can provide services for the user.
  /// - `false`: The purchase of a product is not finished, the product has expired, or a refund has been made for the product after the subscription is valid.
  bool? subIsvalid;

  /// Number of days for retaining a subscription relationship after the subscription is canceled.
  int? cancelledSubKeepDays;

  /// Product type.
  ///
  /// - `0`: consumable.
  /// - `1`: non-consumable.
  /// - `2`: renewable subscription.
  /// - `3`: non-renewable subscription.
  int? kind;

  /// Challenge defined when an app initiates a consumption request, which uniquely identifies the consumption request.
  ///
  /// This parameter is valid only for one-off products.
  String? developerChallenge;

  /// Consumption status, which is valid only for one-off products.
  ///
  /// The options are as follows:
  /// - `0`: Not consumed
  /// - `1`: Consumed
  int? consumptionState;

  /// Merchant ID, which uniquely identifies a transaction and is generated by the Huawei IAP server during payment.
  String? payOrderId;

  /// Payment method.
  ///
  /// - `'0'`: HUAWEI Points
  /// - `'3'`: Credit card
  /// - `'4'`: Alipay
  /// - `'6'`: Carrier billing
  /// - `'13'`: PayPal
  /// - `'16'`: Debit card
  /// - `'17'`: WeChat Pay
  /// - `'19'`: Gift card
  /// - `'20'`: Balance
  /// - `'21'`: HUAWEI Point card
  /// - `'24'`: WorldPay
  /// - `'31'`: HUAWEI Pay
  /// - `'32'`: Ant Credit Pay
  /// - `'200'`: M-Pesa
  String? payType;

  /// Indicates whether to postpone the settlement date.
  ///
  /// The value `1` indicates that the settlement date is postponed.
  int? deferFlag;

  /// Original subscription ID.
  ///
  /// If the parameter is set to a value, the current subscription is switched from another one. The value can be associated with the original subscription.
  String? oriSubscriptionId;

  /// Subscription cancellation initiator.
  ///
  /// - `0`: User
  /// - `1`: Developer
  /// - `2`: Huawei
  int? cancelWay;

  /// Subscription cancellation time in UTC.
  int? cancellationTime;

  /// Time when a subscription is resumed.
  int? resumeTime;

  /// Account type.
  ///
  /// - `1`: AppTouch ID
  /// - Other values: HUAWEI ID
  int? accountFlag;

  /// Purchase timestamp from 00:00:00 on January 1, 1970 to the purchase time, in millionseconds.
  int? purchaseTimeMillis;

  /// Confirmation.
  int? confirmed;

  /// Obtains a timestamp when a grace period ends.
  int? graceExpirationTime;

  /// Creates an [InAppPurchaseData] object.
  InAppPurchaseData({
    this.autoRenewing,
    this.orderId,
    this.packageName,
    this.applicationId,
    this.kind,
    this.productId,
    this.productName,
    this.purchaseTime,
    this.purchaseTimeMillis,
    this.purchaseState,
    this.developerPayload,
    this.purchaseToken,
    this.consumptionState,
    this.confirmed,
    this.currency,
    this.price,
    this.country,
    this.payOrderId,
    this.payType,
    this.purchaseType,
    this.lastOrderId,
    this.productGroup,
    this.oriPurchaseTime,
    this.subscriptionId,
    this.quantity,
    this.daysLasted,
    this.numOfPeriods,
    this.numOfDiscounts,
    this.expirationDate,
    this.expirationIntent,
    this.retryFlag,
    this.introductoryFlag,
    this.trialFlag,
    this.cancelTime,
    this.cancelReason,
    this.appInfo,
    this.notifyClosed,
    this.renewStatus,
    this.subIsvalid,
    this.cancelledSubKeepDays,
    this.developerChallenge,
    this.deferFlag,
    this.oriSubscriptionId,
    this.cancelWay,
    this.cancellationTime,
    this.resumeTime,
    this.accountFlag,
    this.priceConsentStatus,
    this.renewPrice,
    this.graceExpirationTime,
  });

  /// Creates an [InAppPurchaseData] object from a JSON string.
  factory InAppPurchaseData.fromJson(String str) =>
      InAppPurchaseData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InAppPurchaseData.fromMap(Map<dynamic, dynamic> json) =>
      InAppPurchaseData(
        autoRenewing:
            json['autoRenewing'] == null ? null : json['autoRenewing'],
        orderId: json['orderId'] == null ? null : json['orderId'],
        packageName: json['packageName'] == null ? null : json['packageName'],
        applicationId:
            json['applicationId'] == null ? null : json['applicationId'],
        kind: json['kind'] == null ? null : json['kind'],
        productId: json['productId'] == null ? null : json['productId'],
        productName: json['productName'] == null ? null : json['productName'],
        purchaseTime:
            json['purchaseTime'] == null ? null : json['purchaseTime'],
        purchaseTimeMillis: json['purchaseTimeMillis'] == null
            ? null
            : json['purchaseTimeMillis'],
        purchaseState:
            json['purchaseState'] == null ? null : json['purchaseState'],
        developerPayload:
            json['developerPayload'] == null ? null : json['developerPayload'],
        purchaseToken:
            json['purchaseToken'] == null ? null : json['purchaseToken'],
        consumptionState:
            json['consumptionState'] == null ? null : json['consumptionState'],
        confirmed: json['confirmed'] == null ? null : json['confirmed'],
        currency: json['currency'] == null ? null : json['currency'],
        price: json['price'] == null ? null : json['price'],
        country: json['country'] == null ? null : json['country'],
        payOrderId: json['payOrderId'] == null ? null : json['payOrderId'],
        payType: json['payType'] == null ? null : json['payType'],
        purchaseType:
            json['purchaseType'] == null ? null : json['purchaseType'],
        lastOrderId: json['lastOrderId'] == null ? null : json['lastOrderId'],
        productGroup:
            json['productGroup'] == null ? null : json['productGroup'],
        oriPurchaseTime:
            json['oriPurchaseTime'] == null ? null : json['oriPurchaseTime'],
        subscriptionId:
            json['subscriptionId'] == null ? null : json['subscriptionId'],
        quantity: json['quantity'] == null ? null : json['quantity'],
        daysLasted: json['daysLasted'] == null ? null : json['daysLasted'],
        numOfPeriods:
            json['numOfPeriods'] == null ? null : json['numOfPeriods'],
        numOfDiscounts:
            json['numOfDiscounts'] == null ? null : json['numOfDiscounts'],
        expirationDate:
            json['expirationDate'] == null ? null : json['expirationDate'],
        expirationIntent:
            json['expirationIntent'] == null ? null : json['ExpirationIntent'],
        retryFlag: json['retryFlag'] == null ? null : json['retryFlag'],
        introductoryFlag:
            json['introductoryFlag'] == null ? null : json['introductoryFlag'],
        trialFlag: json['trialFlag'] == null ? null : json['trialFlag'],
        cancelTime: json['cancelTime'] == null ? null : json['cancelTime'],
        cancelReason:
            json['cancelReason'] == null ? null : json['cancelReason'],
        appInfo: json['appInfo'] == null ? null : json['appInfo'],
        notifyClosed:
            json['notifyClosed'] == null ? null : json['notifyClosed'],
        renewStatus: json['renewStatus'] == null ? null : json['renewStatus'],
        subIsvalid: json['subIsvalid'] == null ? null : json['subIsvalid'],
        cancelledSubKeepDays: json['cancelledSubKeepDays'] == null
            ? null
            : json['cancelledSubKeepDays'],
        developerChallenge: json['developerChallenge'] == null
            ? null
            : json['developerChallenge'],
        deferFlag: json['deferFlag'] == null ? null : json['deferFlag'],
        oriSubscriptionId: json['oriSubscriptionId'] == null
            ? null
            : json['oriSubscriptionId'],
        cancelWay: json['cancelWay'] == null ? null : json['cancelWay'],
        cancellationTime:
            json['cancellationTime'] == null ? null : json['cancellationTime'],
        resumeTime: json['resumeTime'] == null ? null : json['resumeTime'],
        accountFlag: json['accountFlag'] == null ? null : json['accountFlag'],
        renewPrice: json['renewPrice'] == null ? null : json['renewPrice'],
        priceConsentStatus: json['priceConsentStatus'] == null
            ? null
            : json['priceConsentStatus'],
        graceExpirationTime: json['graceExpirationTime'] == null
            ? null
            : json['graceExpirationTime'],
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewing': autoRenewing,
      'orderId': orderId,
      'packageName': packageName,
      'applicationId': applicationId,
      'kind': kind,
      'productId': productId,
      'productName': productName,
      'purchaseTime': purchaseTime,
      'purchaseTimeMillis': purchaseTimeMillis,
      'purchaseState': purchaseState,
      'developerPayload': developerPayload,
      'purchaseToken': purchaseToken,
      'consumptionState': consumptionState,
      'confirmed': confirmed,
      'currency': currency,
      'price': price,
      'country': country,
      'payOrderId': payOrderId,
      'payType': payType,
      'purchaseType': purchaseType,
      'lastOrderId': lastOrderId,
      'productGroup': productGroup,
      'oriPurchaseTime': oriPurchaseTime,
      'subscriptionId': subscriptionId,
      'quantity': quantity,
      'daysLasted': daysLasted,
      'numOfPeriods': numOfPeriods,
      'numOfDiscounts': numOfDiscounts,
      'expirationDate': expirationDate,
      'expirationIntent': expirationIntent,
      'retryFlag': retryFlag,
      'introductoryFlag': introductoryFlag,
      'trialFlag': trialFlag,
      'cancelTime': cancelTime,
      'cancelReason': cancelReason,
      'appInfo': appInfo,
      'notifyClosed': notifyClosed,
      'renewStatus': renewStatus,
      'subIsvalid': subIsvalid,
      'cancelledSubKeepDays': cancelledSubKeepDays,
      'developerChallenge': developerChallenge,
      'deferFlag': deferFlag,
      'oriSubscriptionId': oriSubscriptionId,
      'cancelWay': cancelWay,
      'cancellationTime': cancellationTime,
      'resumeTime': resumeTime,
      'accountFlag': accountFlag,
      'renewPrice': renewPrice,
      'priceConsentStatus': priceConsentStatus,
      'graceExpirationTime': graceExpirationTime,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (this.runtimeType != other.runtimeType) return false;

    return other is InAppPurchaseData &&
        this.autoRenewing == other.autoRenewing &&
        this.orderId == other.orderId &&
        this.packageName == other.packageName &&
        this.applicationId == other.applicationId &&
        this.kind == other.kind &&
        this.productId == other.productId &&
        this.productName == other.productName &&
        this.purchaseTime == other.purchaseTime &&
        this.purchaseTimeMillis == other.purchaseTimeMillis &&
        this.purchaseState == other.purchaseState &&
        this.developerPayload == other.developerPayload &&
        this.purchaseToken == other.purchaseToken &&
        this.consumptionState == other.consumptionState &&
        this.confirmed == other.confirmed &&
        this.currency == other.currency &&
        this.price == other.price &&
        this.country == other.country &&
        this.payOrderId == other.payOrderId &&
        this.payType == other.payType &&
        this.purchaseType == other.purchaseType &&
        this.lastOrderId == other.lastOrderId &&
        this.productGroup == other.productGroup &&
        this.oriPurchaseTime == other.oriPurchaseTime &&
        this.subscriptionId == other.subscriptionId &&
        this.quantity == other.quantity &&
        this.daysLasted == other.daysLasted &&
        this.numOfPeriods == other.numOfPeriods &&
        this.numOfDiscounts == other.numOfDiscounts &&
        this.expirationDate == other.expirationDate &&
        this.expirationIntent == other.expirationIntent &&
        this.retryFlag == other.retryFlag &&
        this.introductoryFlag == other.introductoryFlag &&
        this.trialFlag == other.trialFlag &&
        this.cancelTime == other.cancelTime &&
        this.cancelReason == other.cancelReason &&
        this.appInfo == other.appInfo &&
        this.notifyClosed == other.notifyClosed &&
        this.renewStatus == other.renewStatus &&
        this.subIsvalid == other.subIsvalid &&
        this.cancelledSubKeepDays == other.cancelledSubKeepDays &&
        this.developerChallenge == other.developerChallenge &&
        this.deferFlag == other.deferFlag &&
        this.oriSubscriptionId == other.oriSubscriptionId &&
        this.cancelWay == other.cancelWay &&
        this.cancellationTime == other.cancellationTime &&
        this.resumeTime == other.resumeTime &&
        this.accountFlag == other.accountFlag &&
        this.renewPrice == other.renewPrice &&
        this.priceConsentStatus == other.priceConsentStatus &&
        this.graceExpirationTime == other.graceExpirationTime;
  }

  @override
  int get hashCode => Object.hashAll(
        <dynamic>[
          autoRenewing,
          orderId,
          packageName,
          applicationId,
          kind,
          productId,
          productName,
          purchaseTime,
          purchaseTimeMillis,
          purchaseState,
          developerPayload,
          purchaseToken,
          consumptionState,
          confirmed,
          currency,
          price,
          country,
          payOrderId,
          payType,
          purchaseType,
          lastOrderId,
          productGroup,
          oriPurchaseTime,
          subscriptionId,
          quantity,
          daysLasted,
          numOfPeriods,
          numOfDiscounts,
          expirationDate,
          expirationIntent,
          retryFlag,
          introductoryFlag,
          trialFlag,
          cancelTime,
          cancelReason,
          appInfo,
          notifyClosed,
          renewStatus,
          subIsvalid,
          cancelledSubKeepDays,
          developerChallenge,
          deferFlag,
          oriSubscriptionId,
          cancelWay,
          cancellationTime,
          resumeTime,
          accountFlag,
          renewPrice,
          priceConsentStatus,
          graceExpirationTime,
        ],
      );
}