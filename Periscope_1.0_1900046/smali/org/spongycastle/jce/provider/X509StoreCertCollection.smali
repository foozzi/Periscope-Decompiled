.class public Lorg/spongycastle/jce/provider/X509StoreCertCollection;
.super Lorg/spongycastle/x509/X509StoreSpi;
.source ""


# instance fields
.field private bbS:Lorg/spongycastle/util/CollectionStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StoreSpi;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509StoreCertCollection;->bbS:Lorg/spongycastle/util/CollectionStore;

    invoke-virtual {v0, p1}, Lorg/spongycastle/util/CollectionStore;->ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/x509/X509StoreParameters;)V
    .locals 2

    .line 22
    instance-of v0, p1, Lorg/spongycastle/x509/X509CollectionStoreParameters;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    new-instance v0, Lorg/spongycastle/util/CollectionStore;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CollectionStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509StoreCertCollection;->bbS:Lorg/spongycastle/util/CollectionStore;

    .line 28
    return-void
.end method
