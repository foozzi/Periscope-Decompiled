.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;
.super Lo/lw;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ro:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "token_type"
    .end annotation
.end field

.field private final Rp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "access_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/nq;

    invoke-direct {v0}, Lo/nq;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/lw;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lo/nq;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bO()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 92
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    move-object v2, v0

    .line 97
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 98
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 100
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 108
    :goto_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 109
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Ro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->Rp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->ˊ(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v0, "Authorization"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v1
.end method
