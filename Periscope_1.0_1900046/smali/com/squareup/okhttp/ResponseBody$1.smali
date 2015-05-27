.class final Lcom/squareup/okhttp/ResponseBody$1;
.super Lcom/squareup/okhttp/ResponseBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lo/ui;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;JLo/ui;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput-wide p2, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$content:Lo/ui;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public source()Lo/ui;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$content:Lo/ui;

    return-object v0
.end method
