.class public final Lo/nq;
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
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lo/nq;->ﾟ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lo/nq;->ί(I)[Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    move-result-object v0

    return-object v0
.end method

.method public ί(I)[Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;
    .locals 1

    .line 26
    new-array v0, p1, [Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    return-object v0
.end method

.method public ﾟ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;
    .locals 2

    .line 22
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;-><init>(Landroid/os/Parcel;Lo/nq;)V

    return-object v0
.end method
