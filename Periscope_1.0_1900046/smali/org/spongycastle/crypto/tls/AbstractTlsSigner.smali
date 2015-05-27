.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsSigner;


# instance fields
.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 15
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B

    move-result-object v0

    return-object v0
.end method
