.class public Lo/ẛ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ẛ$if;,
        Lo/ẛ$ˊ;
    }
.end annotation


# instance fields
.field private final dV:Landroid/content/Context;

.field private final je:I

.field private final jf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 35
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lo/ẛ$if;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ẛ$if;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0, p1, v0, v1}, Lo/ẛ;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lo/ẛ$ˊ;)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lo/ẛ$ˊ;)V
    .locals 8

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/ẛ;->dV:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Lo/ẛ;->ˊ(Landroid/app/ActivityManager;)I

    move-result v3

    .line 45
    invoke-interface {p3}, Lo/ẛ$ˊ;->〳()I

    move-result v0

    invoke-interface {p3}, Lo/ẛ$ˊ;->〵()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v4, v0, 0x4

    .line 48
    mul-int/lit8 v5, v4, 0x4

    .line 49
    mul-int/lit8 v6, v4, 0x2

    .line 51
    add-int v0, v6, v5

    if-gt v0, v3, :cond_0

    .line 52
    iput v6, p0, Lo/ẛ;->jf:I

    .line 53
    iput v5, p0, Lo/ẛ;->je:I

    goto :goto_0

    .line 55
    :cond_0
    int-to-float v0, v3

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 56
    mul-int/lit8 v0, v7, 0x2

    iput v0, p0, Lo/ẛ;->jf:I

    .line 57
    mul-int/lit8 v0, v7, 0x4

    iput v0, p0, Lo/ẛ;->je:I

    .line 60
    :goto_0
    const-string v0, "MemorySizeCalculator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "MemorySizeCalculator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated memory cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ẛ;->jf:I

    invoke-direct {p0, v2}, Lo/ẛ;->ᑉ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pool size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ẛ;->je:I

    invoke-direct {p0, v2}, Lo/ẛ;->ᑉ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " memory class limited? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, v6, v5

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lo/ẛ;->ᑉ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " memoryClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLowMemoryDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lo/ẛ;->ˋ(Landroid/app/ActivityManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void
.end method

.method private static ˊ(Landroid/app/ActivityManager;)I
    .locals 4

    .line 83
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v2, v0, 0x400

    .line 84
    invoke-static {p0}, Lo/ẛ;->ˋ(Landroid/app/ActivityManager;)Z

    move-result v3

    .line 85
    int-to-float v0, v2

    if-eqz v3, :cond_0

    const v1, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static ˋ(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    const/16 v0, 0xb

    if-lt v1, v0, :cond_0

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

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

.method private ᑉ(I)Ljava/lang/String;
    .locals 3

    .line 90
    iget-object v0, p0, Lo/ẛ;->dV:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ẋ()I
    .locals 1

    .line 72
    iget v0, p0, Lo/ẛ;->jf:I

    return v0
.end method

.method public ẍ()I
    .locals 1

    .line 79
    iget v0, p0, Lo/ẛ;->je:I

    return v0
.end method
