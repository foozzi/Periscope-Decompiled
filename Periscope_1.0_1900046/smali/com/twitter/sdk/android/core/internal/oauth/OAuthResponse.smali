.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
        }
    .end annotation
.end field


# instance fields
.field public final Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field public final Rq:J

.field public final nF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/nr;

    invoke-direct {v0}, Lo/nr;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->nF:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rq:J

    .line 47
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lo/nr;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;J)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 39
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->nF:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rq:J

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->nF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->nF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void
.end method
