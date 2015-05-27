.class public Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source ""


# instance fields
.field private final aYu:Ljava/lang/String;

.field private final aYv:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYu:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->ᵏ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    .line 59
    return-void
.end method

.method private ᵏ(Ljava/lang/String;)I
    .locals 5

    .line 64
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ,"

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v3, 0x0

    .line 67
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v0, "threadlocalecimplicitlyca"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    :cond_0
    const-string v0, "ecimplicitlyca"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 79
    :cond_1
    const-string v0, "threadlocaldhdefaultparams"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 83
    :cond_2
    const-string v0, "dhdefaultparams"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    .line 87
    :cond_3
    const-string v0, "all"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    or-int/lit8 v3, v3, 0xf

    .line 91
    :cond_4
    :goto_1
    goto :goto_0

    .line 93
    :cond_5
    if-nez v3, :cond_6

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown permissions passed to mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_6
    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 127
    if-ne p1, p0, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-eqz v0, :cond_2

    .line 134
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    move-object v2, v0

    .line 136
    iget v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    iget v1, v2, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYu:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 144
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3

    .line 109
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;

    move-object v2, v0

    .line 121
    iget v0, p0, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    iget v1, v2, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    and-int/2addr v0, v1

    iget v1, v2, Lorg/spongycastle/jcajce/provider/config/ProviderConfigurationPermission;->aYv:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
