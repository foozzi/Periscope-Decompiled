.class public final Lo/mm;
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
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0, p1}, Lo/mm;->ᵗ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0, p1}, Lo/mm;->ὶ(I)[Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public ᵗ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 2

    .line 20
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Landroid/os/Parcel;Lo/mm;)V

    return-object v0
.end method

.method public ὶ(I)[Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 1

    .line 24
    new-array v0, p1, [Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object v0
.end method
