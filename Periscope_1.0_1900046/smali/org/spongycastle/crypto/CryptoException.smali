.class public Lorg/spongycastle/crypto/CryptoException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private aal:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lorg/spongycastle/crypto/CryptoException;->aal:Ljava/lang/Throwable;

    .line 42
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/CryptoException;->aal:Ljava/lang/Throwable;

    return-object v0
.end method