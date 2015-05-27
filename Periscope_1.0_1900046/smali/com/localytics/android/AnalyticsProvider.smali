.class final Lcom/localytics/android/AnalyticsProvider;
.super Lcom/localytics/android/BaseProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/AnalyticsProvider$1;,
        Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;,
        Lcom/localytics/android/AnalyticsProvider$InfoV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$IdentifiersV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$EventsV3Columns;,
        Lcom/localytics/android/AnalyticsProvider$CustomDimensionsV3Columns;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Lcom/localytics/android/BaseProvider;-><init>()V

    .line 46
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/AnalyticsProvider$1;)V

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 4

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsProvider;->maxSiloDbSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method maxSiloDbSize()J
    .locals 2

    .line 52
    sget-wide v0, Lcom/localytics/android/Constants;->dbMaxSizeForAnalytics:J

    return-wide v0
.end method
