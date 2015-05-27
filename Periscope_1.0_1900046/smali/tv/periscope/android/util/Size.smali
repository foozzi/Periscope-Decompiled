.class public Ltv/periscope/android/util/Size;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Ltv/periscope/android/util/Size;>;"
        }
    .end annotation
.end field

.field public static final bIt:Ltv/periscope/android/util/Size;


# instance fields
.field private final bvd:I

.field private final γ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/akm;

    invoke-direct {v0}, Lo/akm;-><init>()V

    sput-object v0, Ltv/periscope/android/util/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    new-instance v0, Ltv/periscope/android/util/Size;

    invoke-direct {v0}, Ltv/periscope/android/util/Size;-><init>()V

    sput-object v0, Ltv/periscope/android/util/Size;->bIt:Ltv/periscope/android/util/Size;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/periscope/android/util/Size;-><init>(II)V

    .line 39
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Ltv/periscope/android/util/Size;->bvd:I

    .line 43
    iput p2, p0, Ltv/periscope/android/util/Size;->γ:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/Size;->γ:I

    .line 237
    return-void
.end method

.method public static ˊ(Landroid/hardware/Camera$Size;)Ltv/periscope/android/util/Size;
    .locals 2

    .line 68
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static ˑ(FF)Ltv/periscope/android/util/Size;
    .locals 2

    .line 53
    float-to-int v0, p0

    float-to-int v1, p1

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static ﻧ(II)Ltv/periscope/android/util/Size;
    .locals 1

    .line 48
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Ltv/periscope/android/util/Size;

    invoke-direct {v0, p0, p1}, Ltv/periscope/android/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/periscope/android/util/Size;->bIt:Ltv/periscope/android/util/Size;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public Ay()F
    .locals 2

    .line 131
    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    int-to-float v0, v0

    iget v1, p0, Ltv/periscope/android/util/Size;->γ:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public Az()I
    .locals 2

    .line 135
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    iget v1, p0, Ltv/periscope/android/util/Size;->γ:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 212
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Ltv/periscope/android/util/Size;

    invoke-virtual {p0, v0}, Ltv/periscope/android/util/Size;->ˊ(Ltv/periscope/android/util/Size;)Z

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

.method public hashCode()I
    .locals 2

    .line 221
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ltv/periscope/android/util/Size;->γ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public height()I
    .locals 1

    .line 111
    iget v0, p0, Ltv/periscope/android/util/Size;->γ:I

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 123
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    iget v1, p0, Ltv/periscope/android/util/Size;->γ:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 226
    const-string v0, "[w: %d, h: %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ltv/periscope/android/util/Size;->bvd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Ltv/periscope/android/util/Size;->γ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .line 107
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 241
    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Ltv/periscope/android/util/Size;->γ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void
.end method

.method public ˊ(Ltv/periscope/android/util/Size;)Z
    .locals 2

    .line 216
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Ltv/periscope/android/util/Size;->bvd:I

    iget v1, p1, Ltv/periscope/android/util/Size;->bvd:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Ltv/periscope/android/util/Size;->γ:I

    iget v1, p1, Ltv/periscope/android/util/Size;->γ:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ꭸ(I)Ltv/periscope/android/util/Size;
    .locals 2

    .line 182
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->height()I

    move-result v0

    invoke-virtual {p0}, Ltv/periscope/android/util/Size;->width()I

    move-result v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    return-object p0
.end method
