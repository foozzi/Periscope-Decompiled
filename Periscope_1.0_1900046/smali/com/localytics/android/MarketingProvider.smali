.class final Lcom/localytics/android/MarketingProvider;
.super Lcom/localytics/android/BaseProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingProvider$1;,
        Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionValuesV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingConditionsV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRuleEventV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingDisplayedV3Columns;,
        Lcom/localytics/android/MarketingProvider$MarketingRulesV3Columns;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Lcom/localytics/android/BaseProvider;-><init>()V

    .line 38
    new-instance v0, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;

    const-string v1, "com.localytics.android.%s.%s.sqlite"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/MarketingProvider$1;)V

    invoke-virtual {v0}, Lcom/localytics/android/MarketingProvider$MarketingDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method maxSiloDbSize()J
    .locals 2

    .line 44
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method
