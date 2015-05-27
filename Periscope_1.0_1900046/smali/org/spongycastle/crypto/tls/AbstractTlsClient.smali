.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# instance fields
.field protected aSC:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected aSD:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected aSE:Ljava/util/Vector;

.field protected aSF:[I

.field protected aSG:[S

.field protected aSH:[S

.field protected aSI:I

.field protected aSJ:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSC:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public lC()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 135
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTR:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public lD()Ljava/util/Vector;
    .locals 1

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public lE()Lorg/spongycastle/crypto/tls/TlsCompression;
    .locals 2

    .line 216
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSJ:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 219
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 227
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public ʾ(Ljava/util/Hashtable;)V
    .locals 3

    .line 174
    if-eqz p1, :cond_2

    .line 179
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWa:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 184
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ʿ(Ljava/util/Hashtable;)[I

    move-result-object v2

    .line 185
    if-eqz v2, :cond_1

    .line 187
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 190
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ˈ(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSH:[S

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSH:[S

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSI:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->ᒪ(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 196
    :cond_2
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 0

    .line 234
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->lC()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public ˋ(S)V
    .locals 0

    .line 164
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSJ:S

    .line 165
    return-void
.end method

.method public ˎ(Ljava/util/Vector;)V
    .locals 2

    .line 201
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method public τ(I)V
    .locals 0

    .line 159
    iput p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->aSI:I

    .line 160
    return-void
.end method

.method public ᵛ([B)V
    .locals 0

    .line 155
    return-void
.end method
