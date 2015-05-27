.class public final Lo/nr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Lo/nr;->ı(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Lo/nr;->ῐ(I)[Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public ı(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
    .locals 2

    .line 16
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;-><init>(Landroid/os/Parcel;Lo/nr;)V

    return-object v0
.end method

.method public ῐ(I)[Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
    .locals 1

    .line 20
    new-array v0, p1, [Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    return-object v0
.end method
