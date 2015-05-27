.class Lorg/spongycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bbm:I

.field bbn:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xb

    iput v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbm:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbn:Ljava/util/Date;

    return-object v0
.end method

.method public oV()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbm:I

    return v0
.end method

.method public ˊ(Ljava/util/Date;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbn:Ljava/util/Date;

    .line 29
    return-void
.end method

.method public כּ(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/spongycastle/jce/provider/CertStatus;->bbm:I

    .line 45
    return-void
.end method
