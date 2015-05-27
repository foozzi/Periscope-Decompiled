.class public final Lo/xn;
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lo/xn;->ʲ(Landroid/os/Parcel;)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lo/xn;->ﺮ(I)[Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public ʲ(Landroid/os/Parcel;)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 117
    new-instance v0, Ltv/periscope/android/api/PsUser;

    invoke-direct {v0, p1}, Ltv/periscope/android/api/PsUser;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public ﺮ(I)[Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 121
    new-array v0, p1, [Ltv/periscope/android/api/PsUser;

    return-object v0
.end method
