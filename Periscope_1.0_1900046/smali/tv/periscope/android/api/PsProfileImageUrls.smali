.class public Ltv/periscope/android/api/PsProfileImageUrls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public height:I

.field public url:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "ssl_url"
    .end annotation
.end field

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/xj;

    invoke-direct {v0}, Lo/xj;-><init>()V

    sput-object v0, Ltv/periscope/android/api/PsProfileImageUrls;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->url:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->width:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->height:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 32
    iget-object v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Ltv/periscope/android/api/PsProfileImageUrls;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void
.end method
