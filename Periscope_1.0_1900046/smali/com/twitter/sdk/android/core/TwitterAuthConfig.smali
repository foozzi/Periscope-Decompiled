.class public Lcom/twitter/sdk/android/core/TwitterAuthConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/TwitterAuthConfig;>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ql:Ljava/lang/String;

.field private final Qm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/mk;

    invoke-direct {v0}, Lo/mk;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Ql:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Qm:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lo/mk;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwitterAuthConfig must not be created with null consumer key or secret."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ᘁ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Ql:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ᘁ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Qm:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static ᘁ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ba()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Ql:Ljava/lang/String;

    return-object v0
.end method

.method public bb()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Qm:Ljava/lang/String;

    return-object v0
.end method

.method public bc()I
    .locals 1

    .line 98
    const/16 v0, 0x8c

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Ql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->Qm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method