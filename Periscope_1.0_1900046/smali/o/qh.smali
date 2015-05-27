.class public Lo/qh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qh$if;
    }
.end annotation


# static fields
.field public static final VA:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Ljava/io/File;>;"
        }
    .end annotation
.end field

.field private static Vw:Ljava/lang/Boolean;

.field private static final Vx:[C

.field private static Vy:J

.field private static Vz:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lo/qh;->Vw:Ljava/lang/Boolean;

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lo/qh;->Vx:[C

    .line 108
    const-wide/16 v0, -0x1

    sput-wide v0, Lo/qh;->Vy:J

    .line 465
    const/4 v0, 0x0

    sput-object v0, Lo/qh;->Vz:Ljava/lang/Boolean;

    .line 713
    new-instance v0, Lo/qi;

    invoke-direct {v0}, Lo/qi;-><init>()V

    sput-object v0, Lo/qh;->VA:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .line 898
    if-eqz p0, :cond_0

    .line 900
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    throw v0

    .line 903
    :catch_1
    move-exception v0

    .line 906
    :cond_0
    :goto_0
    return-void
.end method

.method public static ct()I
    .locals 1

    .line 151
    invoke-static {}, Lo/qh$if;->cw()Lo/qh$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/qh$if;->ordinal()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized cu()J
    .locals 9

    const-class v8, Lo/qh;

    monitor-enter v8

    .line 205
    :try_start_0
    sget-wide v0, Lo/qh;->Vy:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 206
    const-wide/16 v4, 0x0

    .line 207
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "MemTotal"

    invoke-static {v0, v1}, Lo/qh;->ˊ(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 213
    const-string v0, "KB"

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "KB"

    const/16 v1, 0x400

    invoke-static {v6, v0, v1}, Lo/qh;->ˊ(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "MB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "MB"

    const/high16 v1, 0x100000

    invoke-static {v6, v0, v1}, Lo/qh;->ˊ(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "GB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "GB"

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v0, v1}, Lo/qh;->ˊ(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_0
    goto :goto_1

    .line 227
    :catch_0
    move-exception v7

    .line 228
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v7}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :cond_3
    :goto_1
    sput-wide v4, Lo/qh;->Vy:J

    .line 234
    :cond_4
    sget-wide v0, Lo/qh;->Vy:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-wide v0

    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4
.end method

.method public static cv()Z
    .locals 1

    .line 586
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ʻ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 731
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 733
    if-lez v1, :cond_0

    .line 734
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static ʼ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 912
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 913
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ʽ(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    .line 274
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 542
    invoke-static {p0}, Lo/qh;->ᔇ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ˊ(Landroid/content/Context;Z)I
    .locals 5

    .line 622
    invoke-static {p0}, Lo/qh;->ᵣ(Landroid/content/Context;)F

    move-result v4

    .line 624
    if-nez p1, :cond_0

    .line 625
    const/4 v0, 0x1

    return v0

    .line 628
    :cond_0
    if-eqz p1, :cond_1

    float-to-double v0, v4

    const-wide v2, 0x4058c00000000000L    # 99.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 629
    const/4 v0, 0x3

    return v0

    .line 632
    :cond_1
    if-eqz p1, :cond_2

    float-to-double v0, v4

    const-wide v2, 0x4058c00000000000L    # 99.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 633
    const/4 v0, 0x2

    return v0

    .line 636
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static ˊ(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static ˊ(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 6

    .line 251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v1, v0

    .line 253
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 255
    const/4 v3, 0x0

    .line 258
    if-eqz v2, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v5, v0

    .line 260
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    move-object v3, v5

    .line 262
    goto :goto_1

    .line 264
    :cond_0
    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    return-object v3
.end method

.method public static ˊ(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v5, 0x0

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    .line 128
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 129
    const-string v0, "\\s*:\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 130
    const/4 v0, 0x2

    invoke-virtual {v7, v6, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v8

    .line 131
    array-length v0, v8

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 134
    goto :goto_1

    .line 136
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    const-string v0, "Failed to close system file reader."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 141
    goto :goto_2

    .line 137
    :catch_0
    move-exception v6

    .line 138
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    const-string v0, "Failed to close system file reader."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 141
    goto :goto_2

    .line 140
    :catchall_0
    move-exception v9

    const-string v0, "Failed to close system file reader."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v9

    .line 143
    :cond_2
    :goto_2
    return-object v4
.end method

.method private static ˊ(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 305
    const-string v0, "SHA-1"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 307
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 308
    const/4 v5, 0x0

    .line 311
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v5, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ˌ([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 316
    :catch_0
    move-exception v3

    .line 317
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not calculate hash for app icon."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const-string v0, ""

    return-object v0
.end method

.method private static ˊ([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 324
    const/4 v4, 0x0

    .line 327
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 332
    goto :goto_0

    .line 328
    :catch_0
    move-exception v5

    .line 329
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create hashing algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning empty string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const-string v0, ""

    return-object v0

    .line 337
    :goto_0
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 339
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ˌ([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 459
    invoke-static {p0}, Lo/qh;->יּ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, p1, v1, p3}, Lo/ps;->ˋ(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 449
    invoke-static {p0}, Lo/qh;->יּ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lo/ps;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static ˊ(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 3

    .line 747
    if-eqz p0, :cond_0

    .line 749
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    goto :goto_0

    .line 750
    :catch_0
    move-exception v2

    .line 751
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1, v2}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 754
    :cond_0
    :goto_0
    return-void
.end method

.method public static ˊ(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 3

    .line 757
    if-eqz p0, :cond_0

    .line 759
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v2

    .line 761
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1, v2}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    :cond_0
    :goto_0
    return-void
.end method

.method public static ˊ(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 3

    .line 829
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v2, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 832
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .line 519
    if-eqz p0, :cond_1

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_1

    .line 523
    const-string v0, "bool"

    invoke-static {p0, p1, v0}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 525
    if-lez v2, :cond_0

    .line 526
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 529
    :cond_0
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 531
    if-lez v2, :cond_1

    .line 532
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 537
    :cond_1
    return p2
.end method

.method public static ˌ([B)Ljava/lang/String;
    .locals 6

    .line 674
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    .line 676
    const/4 v5, 0x0

    :goto_0
    array-length v0, p0

    if-ge v5, v0, :cond_0

    .line 677
    aget-byte v0, p0, v5

    and-int/lit16 v4, v0, 0xff

    .line 678
    mul-int/lit8 v0, v5, 0x2

    sget-object v1, Lo/qh;->Vx:[C

    ushr-int/lit8 v2, v4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v3, v0

    .line 679
    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lo/qh;->Vx:[C

    and-int/lit8 v2, v4, 0xf

    aget-char v1, v1, v2

    aput-char v1, v3, v0

    .line 676
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static varargs ˏ([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 352
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    move-object v3, p0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 361
    if-eqz v6, :cond_2

    .line 363
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v4}, Lo/qh;->І(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public static ͺ(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 300
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lo/qh;->ˊ(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static І(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 292
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lo/qh;->ﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static і(Ljava/lang/String;)J
    .locals 9

    .line 403
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 405
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v5, v3, v0

    .line 406
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v7, v3, v0

    .line 407
    sub-long v0, v5, v7

    return-wide v0
.end method

.method public static ՙ(Ljava/lang/String;)Z
    .locals 1

    .line 768
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᐝ(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 654
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key must be at least 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "AES/ECB/PKCS7Padding"

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v4, v0, v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 657
    const/4 v5, 0x0

    .line 659
    const-string v0, "AES/ECB/PKCS7Padding"

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 667
    goto :goto_0

    .line 660
    :catch_0
    move-exception v6

    .line 661
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen."

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 668
    :goto_0
    invoke-virtual {v5, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 669
    return-object v5
.end method

.method public static ᐝ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 439
    invoke-static {p0}, Lo/qh;->יּ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static ᐟ(Landroid/content/Context;)Z
    .locals 3

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᐡ(Landroid/content/Context;)Z
    .locals 4

    .line 562
    invoke-static {p0}, Lo/qh;->ᐟ(Landroid/content/Context;)Z

    move-result v1

    .line 563
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 564
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    const-string v0, "test-keys"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v0, "/system/app/Superuser.apk"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const/4 v0, 0x1

    return v0

    .line 578
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v0, "/system/xbin/su"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const/4 v0, 0x1

    return v0

    .line 582
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static ᐪ(Landroid/content/Context;)I
    .locals 2

    .line 598
    const/4 v1, 0x0

    .line 599
    invoke-static {p0}, Lo/qh;->ᐟ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v1, 0x1

    .line 603
    :cond_0
    invoke-static {p0}, Lo/qh;->ᐡ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    or-int/lit8 v1, v1, 0x2

    .line 607
    :cond_1
    invoke-static {}, Lo/qh;->cv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    or-int/lit8 v1, v1, 0x4

    .line 611
    :cond_2
    return v1
.end method

.method public static ᒽ(Landroid/content/Context;)Z
    .locals 2

    .line 706
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᔇ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 815
    if-lez v1, :cond_0

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᔈ(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 858
    const/4 v3, 0x0

    .line 861
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lo/qh;->ᗮ(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v0

    .line 862
    invoke-static {v3}, Lo/qh;->ͺ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 863
    invoke-static {v4}, Lo/qh;->ՙ(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 867
    :goto_0
    const-string v0, "Failed to close icon input stream."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v5

    .line 864
    :catch_0
    move-exception v4

    .line 865
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not calculate hash for app icon."

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 867
    const-string v0, "Failed to close icon input stream."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 868
    goto :goto_1

    .line 867
    :catchall_0
    move-exception v6

    const-string v0, "Failed to close icon input stream."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v6

    .line 870
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ᕀ(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 111
    const-string v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static ᗮ(Landroid/content/Context;)I
    .locals 1

    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static ᴶ(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 881
    const/4 v4, 0x0

    .line 883
    const-string v0, "io.fabric.android.build_id"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 885
    if-nez v5, :cond_0

    .line 886
    const-string v0, "com.crashlytics.android.build_id"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 889
    :cond_0
    if-eqz v5, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 891
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_1
    return-object v4
.end method

.method public static ᴸ(Landroid/content/Context;)Z
    .locals 4

    .line 966
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lo/qh;->ʼ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0

    .line 969
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 970
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 972
    :goto_0
    return v3

    .line 974
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ᵕ(Landroid/content/Context;)J
    .locals 3

    .line 390
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 391
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 392
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static ᵣ(Landroid/content/Context;)F
    .locals 6

    .line 412
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 415
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 416
    const-string v0, "scale"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 418
    int-to-float v0, v4

    int-to-float v1, v5

    div-float/2addr v0, v1

    return v0
.end method

.method public static ⁀(I)Ljava/lang/String;
    .locals 5

    .line 779
    if-gez p0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%1$10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static יִ(Landroid/content/Context;)Z
    .locals 3

    .line 422
    invoke-static {p0}, Lo/qh;->ᐟ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    move-object v1, v0

    .line 429
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static יּ(Landroid/content/Context;)Z
    .locals 2

    .line 490
    sget-object v0, Lo/qh;->Vw:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 491
    const-string v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/qh;->Vw:Ljava/lang/Boolean;

    .line 495
    :cond_0
    sget-object v0, Lo/qh;->Vw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static ﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lo/qh;->ˊ([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ﾞ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 986
    invoke-static {}, Lo/pj;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method
