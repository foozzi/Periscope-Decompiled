.class public Lorg/spongycastle/crypto/params/MQVPrivateParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQv:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private aQw:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQv:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQw:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 26
    iput-object p3, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 27
    return-void
.end method


# virtual methods
.method public kY()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQv:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public kZ()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQw:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public la()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
