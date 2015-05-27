.class public Lorg/spongycastle/crypto/tls/TlsFatalAlert;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private aVq:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 14
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->aVq:S

    .line 15
    return-void
.end method


# virtual methods
.method public mT()S
    .locals 1

    .line 19
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->aVq:S

    return v0
.end method
