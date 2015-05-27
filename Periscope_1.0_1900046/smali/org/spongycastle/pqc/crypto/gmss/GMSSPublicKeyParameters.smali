.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.source ""


# instance fields
.field private bfl:[B


# direct methods
.method public constructor <init>([BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->bfl:[B

    .line 22
    return-void
.end method


# virtual methods
.method public qW()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->bfl:[B

    return-object v0
.end method
