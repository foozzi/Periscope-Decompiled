.class public final Lo/mk;
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
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/TwitterAuthConfig;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lo/mk;->ᵋ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lo/mk;->ἱ(I)[Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    return-object v0
.end method

.method public ᵋ(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 2

    .line 25
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Landroid/os/Parcel;Lo/mk;)V

    return-object v0
.end method

.method public ἱ(I)[Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .line 29
    new-array v0, p1, [Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method
