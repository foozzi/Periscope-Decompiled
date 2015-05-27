.class final Lcom/localytics/android/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final ACTION_CLICK:Ljava/lang/String; = "click"

.field static final ACTION_DISMISS:Ljava/lang/String; = "X"

.field static final ADID_STRING:Ljava/lang/String; = "adid"

.field static ANALYTICS_HOST:Ljava/lang/String; = null

.field static final CLOSE_EVENT:Ljava/lang/String; = "close"

.field static final CONDITIONS_KEY:Ljava/lang/String; = "conditions"

.field static final CURRENT_API_LEVEL:I

.field static final CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field static final CUSTOM_DIMENSION_DB_KEY:Ljava/lang/String; = "custom_dimension_"

.field static final CUSTOM_DIMENSION_UPLOAD_KEY:Ljava/lang/String; = "c"

.field static final DB_VACUUM_THRESHOLD:D = 0.8

.field static final DEFAULT_HTML_PAGE:Ljava/lang/String; = "index.html"

.field static final DEFAULT_ZIP_PAGE:Ljava/lang/String; = "amp_rule_%d.zip"

.field static final DEVICE_BOTH:Ljava/lang/String; = "both"

.field static final DEVICE_PHONE:Ljava/lang/String; = "phone"

.field static final DEVICE_TABLET:Ljava/lang/String; = "tablet"

.field static final DISMISS_BUTTON_SIDE:F = 40.0f

.field static final DISPLAY_EVENTS_KEY:Ljava/lang/String; = "display_events"

.field static final EVENT_FORMAT:Ljava/lang/String; = "%s:%s"

.field static final HEIGHT_KEY:Ljava/lang/String; = "height"

.field static final IS_DEVICE_IDENTIFIER_UPLOADED:Z = true

.field static final IS_EXCEPTION_SUPPRESSION_ENABLED:Z = true

.field static IS_LOGGING_ENABLED:Z = false

.field static final IS_PARAMETER_CHECKING_ENABLED:Z = false

.field static final KEY_BASE_PATH:Ljava/lang/String; = "base_path"

.field static final KEY_DISPLAY_HEIGHT:Ljava/lang/String; = "display_height"

.field static final KEY_DISPLAY_WIDTH:Ljava/lang/String; = "display_width"

.field static final KEY_HTML_URL:Ljava/lang/String; = "html_url"

.field static final LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String; = "androida_3.1.1"

.field static final LOCALYTICS_DIR:Ljava/lang/String; = ".localytics"

.field static final LOCALYTICS_METADATA_APP_KEY:Ljava/lang/String; = "LOCALYTICS_APP_KEY"

.field static final LOCALYTICS_METADATA_NOTIFICATION_ICON:Ljava/lang/String; = "LOCALYTICS_NOTIFICATION_ICON"

.field static final LOCALYTICS_METADATA_ROLLUP_KEY:Ljava/lang/String; = "LOCALYTICS_ROLLUP_KEY"

.field static final LOCALYTICS_PACKAGE_NAME:Ljava/lang/String; = "com.localytics.android"

.field static final LOG_TAG:Ljava/lang/String; = "Localytics"

.field static final MARKETING_AB_KEY:Ljava/lang/String; = "ampAB"

.field static final MARKETING_ACTION_KEY:Ljava/lang/String; = "ampAction"

.field static final MARKETING_ACTION_STRING:Ljava/lang/String; = "ampAction"

.field static final MARKETING_CAMPAIGN_ID_KEY:Ljava/lang/String; = "ampCampaignId"

.field static final MARKETING_CAMPAIGN_KEY:Ljava/lang/String; = "ampCampaign"

.field static final MARKETING_DURATION_KEY:Ljava/lang/String; = "ampDuration"

.field static final MARKETING_EVENT_NAME_KEY:Ljava/lang/String; = "ampView"

.field static final MARKETING_FIRST_RUN_TRIGGER:Ljava/lang/String; = "AMP First Run"

.field static MARKETING_HOST:Ljava/lang/String; = null

.field static final MARKETING_KEY:Ljava/lang/String; = "amp"

.field static final MARKETING_SCHEMA_VERSION:I = 0x2

.field static final MARKETING_START_TRIGGER:Ljava/lang/String; = "AMP Loaded"

.field static final MARKETING_UPGRADE_TRIGGER:Ljava/lang/String; = "AMP upgrade"

.field static final MAXIMUM_ROWS_PER_UPLOAD:I = 0x64

.field static final MAX_CUSTOM_DIMENSIONS:I = 0xa

.field static final MAX_NAME_LENGTH:I = 0x80

.field static final MAX_NUMBER_OF_UPLOAD_RETRIES:I = 0x3

.field static final MAX_NUM_ATTRIBUTES:I = 0x32

.field static final MAX_VALUE_LENGTH:I = 0xff

.field static final NUMBER_OF_EOF_ATTEMPTS:I = 0x3

.field static final OPEN_EVENT:Ljava/lang/String; = "open"

.field static final OPEN_EXTERNAL:Ljava/lang/String; = "ampExternalOpen"

.field static final OPT_IN_EVENT:Ljava/lang/String; = "opt_in"

.field static final OPT_OUT_EVENT:Ljava/lang/String; = "opt_out"

.field static final PHONE_SIZE_KEY:Ljava/lang/String; = "phone_size"

.field static PROFILES_HOST:Ljava/lang/String; = null

.field static final PROTOCOL_FILE:Ljava/lang/String; = "file"

.field static final PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field static final PROTOCOL_HTTPS:Ljava/lang/String; = "https"

.field static final SCHEMA_VERSION_CLIENT_ATTRIBUTE:Ljava/lang/String; = "Schema Version - Client"

.field static final SCHEMA_VERSION_SERVER_ATTRIBUTE:Ljava/lang/String; = "Schema Version - Server"

.field static SESSION_EXPIRATION:J = 0x0L

.field static final SESSION_START_MARKETING_MESSAGE_DELAY:J = 0x2710L

.field static final TABLET_SIZE_KEY:Ljava/lang/String; = "tablet_size"

.field static final TEST_MODE_UPDATE_DATA:Ljava/lang/String; = "Test Mode Update Data"

.field static final UPLOAD_BACKOFF:J = 0x2710L

.field static final USER_TYPE:Ljava/lang/String; = "type"

.field static final USER_TYPE_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final USER_TYPE_KNOWN:Ljava/lang/String; = "known"

.field static final USE_EXTERNAL_DIRECTORY:Z = false

.field static USE_HTTPS:Z = false

.field static final WIDTH_KEY:Ljava/lang/String; = "width"

.field static dbMaxSizeForAnalytics:J = 0x0L

.field static dbMaxSizeForProfiles:J = 0x0L

.field private static final sTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 195
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    sput v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/localytics/android/Constants;->sTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/localytics/android/Constants;->dbMaxSizeForProfiles:J

    .line 234
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/localytics/android/Constants;->dbMaxSizeForAnalytics:J

    .line 245
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    .line 260
    const-string v0, "analytics.localytics.com"

    sput-object v0, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    .line 264
    const-string v0, "analytics.localytics.com"

    sput-object v0, Lcom/localytics/android/Constants;->MARKETING_HOST:Ljava/lang/String;

    .line 268
    const-string v0, "profile.localytics.com"

    sput-object v0, Lcom/localytics/android/Constants;->PROFILES_HOST:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .line 282
    sget-object v0, Lcom/localytics/android/Constants;->sTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setTestModeEnabled(Z)V
    .locals 1

    .line 287
    sget-object v0, Lcom/localytics/android/Constants;->sTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    return-void
.end method
