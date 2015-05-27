.class public Lorg/spongycastle/crypto/params/MQVPublicParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private aQy:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/params/MQVPublicParameters;->aQy:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/params/MQVPublicParameters;->aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 17
    return-void
.end method


# virtual methods
.method public la()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPublicParameters;->aQx:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public lb()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPublicParameters;->aQy:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
