.class public Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aZN:Ljava/lang/String;

.field private aZO:Ljava/lang/String;

.field private aZP:Ljava/lang/String;

.field private aZQ:Ljava/lang/String;

.field private aZR:Ljava/lang/String;

.field private aZS:Ljava/lang/String;

.field private aZT:Ljava/lang/String;

.field private aZU:Ljava/lang/String;

.field private aZV:Ljava/lang/String;

.field private aZW:Ljava/lang/String;

.field private aZX:Ljava/lang/String;

.field private aZY:Ljava/lang/String;

.field private aZZ:Ljava/lang/String;

.field private baa:Ljava/lang/String;

.field private bab:Ljava/lang/String;

.field private bac:Ljava/lang/String;

.field private bad:Ljava/lang/String;

.field private bae:Ljava/lang/String;

.field private baf:Ljava/lang/String;

.field private bag:Ljava/lang/String;

.field private bah:Ljava/lang/String;

.field private bai:Ljava/lang/String;

.field private baj:Ljava/lang/String;

.field private bak:Ljava/lang/String;

.field private bal:Ljava/lang/String;

.field private bam:Ljava/lang/String;

.field private ban:Ljava/lang/String;

.field private bao:Ljava/lang/String;

.field private bap:Ljava/lang/String;

.field private baq:Ljava/lang/String;

.field private bar:Ljava/lang/String;

.field private bas:Ljava/lang/String;

.field private bat:Ljava/lang/String;

.field private bau:Ljava/lang/String;

.field private bav:Ljava/lang/String;

.field private baw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 177
    const-string v0, "ldap://localhost:389"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZN:Ljava/lang/String;

    .line 183
    if-nez p2, :cond_0

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZO:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_0
    iput-object p2, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZO:Ljava/lang/String;

    .line 192
    :goto_0
    const-string v0, "userCertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZP:Ljava/lang/String;

    .line 193
    const-string v0, "cACertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZQ:Ljava/lang/String;

    .line 194
    const-string v0, "crossCertificatePair"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZR:Ljava/lang/String;

    .line 195
    const-string v0, "certificateRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZS:Ljava/lang/String;

    .line 196
    const-string v0, "deltaRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZT:Ljava/lang/String;

    .line 197
    const-string v0, "authorityRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZU:Ljava/lang/String;

    .line 198
    const-string v0, "attributeCertificateAttribute"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZV:Ljava/lang/String;

    .line 199
    const-string v0, "aACertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZW:Ljava/lang/String;

    .line 200
    const-string v0, "attributeDescriptorCertificate"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZX:Ljava/lang/String;

    .line 201
    const-string v0, "attributeCertificateRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZY:Ljava/lang/String;

    .line 202
    const-string v0, "attributeAuthorityRevocationList"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZZ:Ljava/lang/String;

    .line 203
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baa:Ljava/lang/String;

    .line 204
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bab:Ljava/lang/String;

    .line 205
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bac:Ljava/lang/String;

    .line 206
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bad:Ljava/lang/String;

    .line 207
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bae:Ljava/lang/String;

    .line 208
    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baf:Ljava/lang/String;

    .line 209
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bag:Ljava/lang/String;

    .line 210
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bah:Ljava/lang/String;

    .line 211
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bai:Ljava/lang/String;

    .line 212
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baj:Ljava/lang/String;

    .line 213
    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bak:Ljava/lang/String;

    .line 214
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bal:Ljava/lang/String;

    .line 215
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bam:Ljava/lang/String;

    .line 216
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ban:Ljava/lang/String;

    .line 217
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bao:Ljava/lang/String;

    .line 218
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bap:Ljava/lang/String;

    .line 219
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baq:Ljava/lang/String;

    .line 220
    const-string v0, "cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bar:Ljava/lang/String;

    .line 221
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bas:Ljava/lang/String;

    .line 222
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bat:Ljava/lang/String;

    .line 223
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bau:Ljava/lang/String;

    .line 224
    const-string v0, "o ou"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bav:Ljava/lang/String;

    .line 225
    const-string v0, "uid serialNumber cn"

    iput-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baw:Ljava/lang/String;

    .line 226
    return-void
.end method

.method static synthetic ʳ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bav:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʴ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʹ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʻ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʼ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʽ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʾ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ʿ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˈ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˉ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˊ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˋ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˌ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˍ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˎ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˏ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˑ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ͺ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ՙ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic י(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ـ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bae:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ٴ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᐝ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᐧ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᐨ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᴵ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ban:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᵎ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bao:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᵔ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᵢ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ι(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->aZW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ⁱ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ﹳ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ﹶ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bas:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ﹺ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ｰ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bau:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ﾞ(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bai:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public oK()Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
    .locals 2

    .line 770
    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baa:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bab:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bac:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bad:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bae:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baf:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bah:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bai:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baj:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bak:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bam:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->ban:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bao:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bap:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->baq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bas:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bau:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;->bav:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Necessary parameters not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;-><init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters$Builder;Lorg/spongycastle/jce/X509LDAPCertStoreParameters$1;)V

    return-object v0
.end method
