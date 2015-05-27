.class public Lo/ףּ;
.super Ljava/lang/Object;


# static fields
.field private static final EY:Lo/ףּ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ףּ;

    invoke-direct {v0}, Lo/ףּ;-><init>()V

    sput-object v0, Lo/ףּ;->EY:Lo/ףּ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Landroid/content/pm/PackageInfo;Z)Z
    .locals 6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "GoogleSignatureVerifier"

    const-string v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v4, Lo/ﻌ$י;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lo/ﻌ$י;-><init>([B)V

    if-eqz p2, :cond_1

    invoke-static {}, Lo/ﻌ;->Ⅱ()Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/ﻌ;->ⅱ()Ljava/util/Set;

    move-result-object v5

    :goto_0
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "GoogleSignatureVerifier"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GoogleSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature not valid.  Found: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lo/ﻌ$if;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static ぃ()Lo/ףּ;
    .locals 1

    sget-object v0, Lo/ףּ;->EY:Lo/ףּ;

    return-object v0
.end method


# virtual methods
.method varargs ˊ(Landroid/content/pm/PackageInfo;[Lo/ﻌ$if;)Lo/ﻌ$if;
    .locals 6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "GoogleSignatureVerifier"

    const-string v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Lo/ﻌ$י;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lo/ﻌ$י;-><init>([B)V

    const/4 v5, 0x0

    :goto_0
    array-length v0, p2

    if-ge v5, v0, :cond_2

    aget-object v0, p2, v5

    invoke-virtual {v0, v4}, Lo/ﻌ$if;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p2, v5

    return-object v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "GoogleSignatureVerifier"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GoogleSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature not valid.  Found: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lo/ﻌ$if;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lo/ძ;->ˋ(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public ˊ(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5

    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "GoogleSignatureVerifier"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package manager can\'t find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaulting to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :goto_0
    invoke-virtual {p0, p1, v3}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method
