.class public Lcom/twitter/sdk/android/core/TwitterAuthToken;
.super Lo/lw;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;"
        }
    .end annotation
.end field


# instance fields
.field public final Qn:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "token"
    .end annotation
.end field

.field public final Qo:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "secret"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/mm;

    invoke-direct {v0}, Lo/mm;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lo/lw;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lo/mm;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/lw;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 90
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-object v2, v0

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_1
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 104
    :goto_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 105
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 62
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 65
    const-string v0, "Authorization"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v6
.end method
