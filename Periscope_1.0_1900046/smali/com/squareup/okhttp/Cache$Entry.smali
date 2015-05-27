.class final Lcom/squareup/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field private final code:I

.field private final handshake:Lcom/squareup/okhttp/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/squareup/okhttp/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/squareup/okhttp/Headers;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/squareup/okhttp/Headers;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Response;)V
    .locals 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 547
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    .line 548
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 550
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Cache$Entry;->code:I

    .line 551
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    .line 553
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 554
    return-void
.end method

.method public constructor <init>(Lo/va;)V
    .locals 14

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    :try_start_0
    invoke-static {p1}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v3

    .line 508
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 509
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 510
    new-instance v4, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 511
    # invokes: Lcom/squareup/okhttp/Cache;->readInt(Lo/ui;)I
    invoke-static {v3}, Lcom/squareup/okhttp/Cache;->access$1000(Lo/ui;)I

    move-result v5

    .line 512
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 513
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 512
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    .line 517
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v6

    .line 518
    iget-object v0, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 519
    iget v0, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    iput v0, p0, Lcom/squareup/okhttp/Cache$Entry;->code:I

    .line 520
    iget-object v0, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 521
    new-instance v7, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v7}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 522
    # invokes: Lcom/squareup/okhttp/Cache;->readInt(Lo/ui;)I
    invoke-static {v3}, Lcom/squareup/okhttp/Cache;->access$1000(Lo/ui;)I

    move-result v8

    .line 523
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    .line 524
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/squareup/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 523
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v7}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    .line 528
    invoke-direct {p0}, Lcom/squareup/okhttp/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v9

    .line 530
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 531
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \"\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_2
    invoke-interface {v3}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v10

    .line 534
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/Cache$Entry;->readCertificateList(Lo/ui;)Ljava/util/List;

    move-result-object v11

    .line 535
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/Cache$Entry;->readCertificateList(Lo/ui;)Ljava/util/List;

    move-result-object v12

    .line 536
    invoke-static {v10, v11, v12}, Lcom/squareup/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 537
    goto :goto_2

    .line 538
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_2
    invoke-interface {p1}, Lo/va;->close()V

    .line 542
    goto :goto_3

    .line 541
    :catchall_0
    move-exception v13

    invoke-interface {p1}, Lo/va;->close()V

    throw v13

    .line 543
    :goto_3
    return-void
.end method

.method private isHttps()Z
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lo/ui;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/ui;)Ljava/util/List<Ljava/security/cert/Certificate;>;"
        }
    .end annotation

    .line 598
    # invokes: Lcom/squareup/okhttp/Cache;->readInt(Lo/ui;)I
    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->access$1000(Lo/ui;)I

    move-result v2

    .line 599
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 602
    :cond_0
    const-string v0, "X.509"

    :try_start_0
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 605
    invoke-interface {p1}, Lo/ui;->ee()Ljava/lang/String;

    move-result-object v6

    .line 606
    new-instance v7, Lo/ue;

    invoke-direct {v7}, Lo/ue;-><init>()V

    .line 607
    invoke-static {v6}, Lo/uj;->＿(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    invoke-virtual {v7, v0}, Lo/ue;->ˊ(Lo/uj;)Lo/ue;

    .line 608
    invoke-virtual {v7}, Lo/ue;->dX()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 610
    :cond_1
    return-object v4

    .line 611
    :catch_0
    move-exception v3

    .line 612
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCertList(Lo/uh;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/uh;Ljava/util/List<Ljava/security/cert/Certificate;>;)V"
        }
    .end annotation

    .line 619
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lo/uh;->ʲ(J)Lo/uh;

    .line 620
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 621
    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 622
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 623
    invoke-static {v4}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    invoke-virtual {v0}, Lo/uj;->ej()Ljava/lang/String;

    move-result-object v5

    .line 624
    invoke-interface {p1, v5}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 625
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lo/uh;->ɟ(I)Lo/uh;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    :cond_0
    goto :goto_1

    .line 627
    :catch_0
    move-exception v2

    .line 628
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :goto_1
    return-void
.end method


# virtual methods
.method public matches(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)Z
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    .line 635
    invoke-static {p2, v0, p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public response(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Lcom/squareup/okhttp/Response;
    .locals 6

    .line 639
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 642
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 643
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    .line 644
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v5

    .line 646
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 647
    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 648
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/Cache$Entry;->code:I

    .line 649
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 650
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    .line 651
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Cache$CacheResponseBody;

    invoke-direct {v1, p2, v3, v4}, Lcom/squareup/okhttp/Cache$CacheResponseBody;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 653
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 7

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lo/uz;

    move-result-object v0

    invoke-static {v0}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v4

    .line 559
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 560
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 561
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 562
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 563
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {v4, v0, v1}, Lo/uh;->ʲ(J)Lo/uh;

    .line 564
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 565
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 566
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 567
    const-string v0, ": "

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 568
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 569
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 565
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 572
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/StatusLine;

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$Entry;->protocol:Lcom/squareup/okhttp/Protocol;

    iget v2, p0, Lcom/squareup/okhttp/Cache$Entry;->code:I

    iget-object v3, p0, Lcom/squareup/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/StatusLine;-><init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 573
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 574
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {v4, v0, v1}, Lo/uh;->ʲ(J)Lo/uh;

    .line 575
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 576
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_1

    .line 577
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 578
    const-string v0, ": "

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 579
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 580
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 585
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    .line 586
    const/16 v0, 0xa

    invoke-interface {v4, v0}, Lo/uh;->ɟ(I)Lo/uh;

    .line 587
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/squareup/okhttp/Cache$Entry;->writeCertList(Lo/uh;Ljava/util/List;)V

    .line 588
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$Entry;->handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/squareup/okhttp/Cache$Entry;->writeCertList(Lo/uh;Ljava/util/List;)V

    .line 590
    :cond_2
    invoke-interface {v4}, Lo/uh;->close()V

    .line 591
    return-void
.end method
