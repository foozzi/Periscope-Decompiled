.class public final Lo/xj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0, p1}, Lo/xj;->ǃ(Landroid/os/Parcel;)Ltv/periscope/android/api/PsProfileImageUrls;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0, p1}, Lo/xj;->ﱢ(I)[Ltv/periscope/android/api/PsProfileImageUrls;

    move-result-object v0

    return-object v0
.end method

.method public ǃ(Landroid/os/Parcel;)Ltv/periscope/android/api/PsProfileImageUrls;
    .locals 1

    .line 39
    new-instance v0, Ltv/periscope/android/api/PsProfileImageUrls;

    invoke-direct {v0, p1}, Ltv/periscope/android/api/PsProfileImageUrls;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public ﱢ(I)[Ltv/periscope/android/api/PsProfileImageUrls;
    .locals 1

    .line 43
    new-array v0, p1, [Ltv/periscope/android/api/PsProfileImageUrls;

    return-object v0
.end method
