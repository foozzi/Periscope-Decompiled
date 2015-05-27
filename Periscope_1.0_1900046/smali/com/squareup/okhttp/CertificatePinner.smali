.class public final Lcom/squareup/okhttp/CertificatePinner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/CertificatePinner$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/squareup/okhttp/CertificatePinner;


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lo/uj;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/squareup/okhttp/CertificatePinner$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/CertificatePinner$Builder;->build()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/CertificatePinner;->DEFAULT:Lcom/squareup/okhttp/CertificatePinner;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/CertificatePinner$Builder;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    # getter for: Lcom/squareup/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;
    invoke-static {p1}, Lcom/squareup/okhttp/CertificatePinner$Builder;->access$000(Lcom/squareup/okhttp/CertificatePinner$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/CertificatePinner$Builder;Lcom/squareup/okhttp/CertificatePinner$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/CertificatePinner;-><init>(Lcom/squareup/okhttp/CertificatePinner$Builder;)V

    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2

    .line 161
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/squareup/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lo/uj;

    move-result-object v1

    invoke-virtual {v1}, Lo/uj;->ej()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha1(Ljava/security/cert/X509Certificate;)Lo/uj;
    .locals 1

    .line 168
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->sha1(Lo/uj;)Lo/uj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<Ljava/security/cert/Certificate;>;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 125
    if-nez v2, :cond_0

    return-void

    .line 127
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 128
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 129
    invoke-static {v5}, Lcom/squareup/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lo/uj;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 127
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate pinning failure!"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Peer certificate chain:"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_3

    .line 137
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 138
    const-string v0, "\n    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/squareup/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_3
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_4

    .line 143
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/uj;

    move-object v6, v0

    .line 144
    const-string v0, "\n    sha1/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lo/uj;->ej()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 146
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1

    .line 152
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 153
    return-void
.end method
