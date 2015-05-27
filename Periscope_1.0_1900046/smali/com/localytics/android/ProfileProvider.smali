.class final Lcom/localytics/android/ProfileProvider;
.super Lcom/localytics/android/BaseProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ProfileProvider$1;,
        Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;,
        Lcom/localytics/android/ProfileProvider$ProfileV3Columns;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/localytics/android/BaseProvider;-><init>()V

    .line 39
    new-instance v0, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/ProfileProvider$1;)V

    invoke-virtual {v0}, Lcom/localytics/android/ProfileProvider$ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/ProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    return-void
.end method


# virtual methods
.method canAddToDB()Z
    .locals 4

    .line 51
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/localytics/android/ProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/localytics/android/ProfileProvider;->maxSiloDbSize()J

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

    .line 45
    sget-wide v0, Lcom/localytics/android/Constants;->dbMaxSizeForProfiles:J

    return-wide v0
.end method
