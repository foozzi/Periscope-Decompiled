.class public Lorg/spongycastle/asn1/BERGenerator;
.super Lorg/spongycastle/asn1/ASN1Generator;
.source ""


# instance fields
.field private aaK:Z

.field private aaL:Z


# virtual methods
.method protected fc()V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aan:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aan:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aaK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aaL:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aan:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/BERGenerator;->aan:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 99
    :cond_0
    return-void
.end method
