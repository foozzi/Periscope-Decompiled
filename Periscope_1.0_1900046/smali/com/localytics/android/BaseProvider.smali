.class abstract Lcom/localytics/android/BaseProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field static final DATABASE_FILE:Ljava/lang/String; = "com.localytics.android.%s.%s.sqlite"

.field private static final OLD_DATABASE_FILE:Ljava/lang/String; = "com.localytics.android.%s.sqlite"

.field private static final sCountProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private static final sValidTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# instance fields
.field mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/localytics/android/BaseProvider;->getCountProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/BaseProvider;->sCountProjectionMap:Ljava/util/Map;

    .line 89
    invoke-static {}, Lcom/localytics/android/BaseProvider;->getValidTables()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/BaseProvider;->sValidTables:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 6

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    .line 153
    if-nez v5, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method static deleteOldFiles()V
    .locals 3

    .line 137
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "localytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteDirectory(Ljava/io/File;)Z

    .line 138
    return-void
.end method

.method private static getCountProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v0, "_count"

    const-string v1, "COUNT(*)"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v2
.end method

.method private getNumberOfRows(Ljava/lang/String;)I
    .locals 6

    .line 166
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method private static getValidTables()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 103
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    const-string v0, "events"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "custom_dimensions"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v0, "info"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v0, "identifiers"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "changes"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "marketing_rules"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "marketing_ruleevent"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "marketing_conditions"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "marketing_condition_values"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "marketing_displayed"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    return-object v1
.end method

.method private static isValidTable(Ljava/lang/String;)Z
    .locals 1

    .line 218
    const/4 v0, 0x0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/localytics/android/BaseProvider;->sValidTables:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract canAddToDB()Z
.end method

.method close()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 407
    return-void
.end method

.method insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    .line 236
    const-string v0, "Insert table: %s, values: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/localytics/android/BaseProvider;->canAddToDB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string v0, "Database is full; data not inserted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 241
    const-wide/16 v0, -0x1

    return-wide v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 246
    const-string v0, "Inserted row with new id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 248
    return-wide v4
.end method

.method abstract maxSiloDbSize()J
.end method

.method query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 193
    const-string v0, "Query table: %s, projection: %s, selection: %s, selectionArgs: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 195
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 196
    invoke-virtual {v8, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 198
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/localytics/android/BaseProvider;->sCountProjectionMap:Ljava/util/Map;

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 203
    :cond_0
    move-object v0, v8

    iget-object v1, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query result is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 207
    return-object v9
.end method

.method remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 318
    const-string v0, "Delete table: %s, selection: %s, selectionArgs: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    if-ne v0, p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 330
    :goto_0
    const-string v0, "Deleted %d rows"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 332
    return v4
.end method

.method public runBatchTransaction(Ljava/lang/Runnable;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 390
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 391
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 396
    goto :goto_0

    .line 395
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 397
    :goto_0
    return-void
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 359
    const-string v0, "Update table: %s, values: %s, selection: %s, selectionArgs: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method vacuumIfNecessary()V
    .locals 9

    .line 257
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 260
    long-to-double v0, v7

    invoke-virtual {p0}, Lcom/localytics/android/BaseProvider;->maxSiloDbSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 262
    new-instance v0, Lcom/localytics/android/BaseProvider$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/BaseProvider$1;-><init>(Lcom/localytics/android/BaseProvider;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 291
    :cond_0
    return-void
.end method
