.class Lorg/spongycastle/asn1/LazyEncodedSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source ""


# instance fields
.field private abx:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    .line 19
    return-void
.end method

.method private fm()V
    .locals 3

    .line 23
    new-instance v2, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->aav:Ljava/util/Vector;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    .line 31
    return-void
.end method


# virtual methods
.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->fm()V

    .line 70
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->fm()V

    .line 80
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized eT()Ljava/util/Enumeration;
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method ey()I
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    .line 92
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    return v0
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->fm()V

    .line 60
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    .line 108
    :goto_0
    return-void
.end method

.method public declared-synchronized ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->abx:[B

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->fm()V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
