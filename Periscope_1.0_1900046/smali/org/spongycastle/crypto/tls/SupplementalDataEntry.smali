.class public Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aUI:I

.field protected fw:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->aUI:I

    .line 11
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->fw:[B

    .line 12
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->fw:[B

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->aUI:I

    return v0
.end method
