.class public Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
.super Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;
.source ""


# instance fields
.field private final Rh:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "guest_token"
    .end annotation
.end field


# virtual methods
.method public bI()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 55
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 56
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

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 59
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    move-object v2, v0

    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 62
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->hashCode()I

    move-result v2

    .line 70
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->Rh:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 71
    return v2
.end method

.method public ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 49
    const-string v0, "x-guest-token"

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->bI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v2
.end method
