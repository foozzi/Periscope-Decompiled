.class final Lcom/squareup/okhttp/RequestBody$1;
.super Lcom/squareup/okhttp/RequestBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;I[BI)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput p2, p0, Lcom/squareup/okhttp/RequestBody$1;->val$byteCount:I

    iput-object p3, p0, Lcom/squareup/okhttp/RequestBody$1;->val$content:[B

    iput p4, p0, Lcom/squareup/okhttp/RequestBody$1;->val$offset:I

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 74
    iget v0, p0, Lcom/squareup/okhttp/RequestBody$1;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lo/uh;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$1;->val$content:[B

    iget v1, p0, Lcom/squareup/okhttp/RequestBody$1;->val$offset:I

    iget v2, p0, Lcom/squareup/okhttp/RequestBody$1;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lo/uh;->ˌ([BII)Lo/uh;

    .line 79
    return-void
.end method
