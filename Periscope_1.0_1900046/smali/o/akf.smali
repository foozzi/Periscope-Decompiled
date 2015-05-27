.class public Lo/akf;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bIj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9505"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9506"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-I337"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-M919"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I545"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPH-L720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9508"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-R970"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-D801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/akf;->bIj:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Ltv/periscope/android/util/Size;Ltv/periscope/android/util/Size;)F
    .locals 6

    .line 67
    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->Ay()F

    move-result v2

    .line 68
    invoke-virtual {p1}, Ltv/periscope/android/util/Size;->Ay()F

    move-result v3

    .line 70
    cmpg-float v0, v2, v3

    if-gez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ˑ(FF)Ltv/periscope/android/util/Size;

    move-result-object v4

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ˑ(FF)Ltv/periscope/android/util/Size;

    move-result-object v4

    .line 75
    :goto_0
    invoke-virtual {v4}, Ltv/periscope/android/util/Size;->Az()I

    move-result v0

    invoke-virtual {p1}, Ltv/periscope/android/util/Size;->Az()I

    move-result v1

    sub-int v5, v0, v1

    .line 76
    if-lez v5, :cond_1

    .line 78
    int-to-float v0, v5

    return v0

    .line 81
    :cond_1
    neg-int v0, v5

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static ˊ(ILandroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;
    .locals 3

    .line 27
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 28
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    invoke-static {v2, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 30
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, p0, :cond_0

    .line 31
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Lo/akf;->ˊ(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ltv/periscope/android/util/Size;Ljava/util/List;)Ltv/periscope/android/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ltv/periscope/android/util/Size;Ljava/util/List<Landroid/hardware/Camera$Size;>;)Ltv/periscope/android/util/Size;"
        }
    .end annotation

    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    const/high16 v2, -0x40800000    # -1.0f

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object v4, v0

    .line 94
    invoke-static {v4}, Ltv/periscope/android/util/Size;->ˊ(Landroid/hardware/Camera$Size;)Ltv/periscope/android/util/Size;

    move-result-object v5

    .line 95
    invoke-static {p0, v5}, Lo/akf;->ˊ(Ltv/periscope/android/util/Size;Ltv/periscope/android/util/Size;)F

    move-result v6

    .line 96
    cmpg-float v0, v6, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    .line 97
    :cond_1
    move v2, v6

    .line 98
    move-object v1, v5

    .line 100
    :cond_2
    goto :goto_0

    .line 102
    :cond_3
    return-object v1
.end method

.method public static ˊ(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Z
    .locals 5

    .line 106
    const-string v1, ""

    .line 108
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 110
    if-nez v2, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    sget-boolean v0, Lo/akf;->bIj:Z

    if-eqz v0, :cond_1

    .line 115
    const-string v1, "auto"

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "continuous-video"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v1, "continuous-video"

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "infinity"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const-string v1, "infinity"

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    .line 123
    const-string v0, ""

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_4
    goto :goto_1

    .line 128
    :catch_0
    move-exception v4

    .line 129
    invoke-static {v4}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 132
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ˊ(ILjava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<[I>;)[I"
        }
    .end annotation

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const v1, 0x7fffffff

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v5, v0

    .line 52
    const/4 v0, 0x0

    aget v6, v5, v0

    .line 53
    const/4 v0, 0x1

    aget v7, v5, v0

    .line 54
    if-lt v7, p0, :cond_2

    if-gt v6, p0, :cond_2

    .line 55
    if-lt v6, v1, :cond_1

    if-ne v6, v1, :cond_2

    if-le v7, v2, :cond_2

    .line 57
    :cond_1
    move v1, v6

    .line 58
    move v2, v7

    .line 59
    move-object v3, v5

    .line 62
    :cond_2
    goto :goto_0

    .line 63
    :cond_3
    return-object v3
.end method
