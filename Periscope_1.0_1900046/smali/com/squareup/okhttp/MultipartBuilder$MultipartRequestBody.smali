.class final Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/MultipartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final boundary:Lo/uj;

.field private contentLength:J

.field private final contentType:Lcom/squareup/okhttp/MediaType;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/squareup/okhttp/Headers;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/MediaType;Lo/uj;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/squareup/okhttp/MediaType;Lo/uj;Ljava/util/List<Lcom/squareup/okhttp/Headers;>;Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 205
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p2, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lo/uj;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lo/uj;->ei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 209
    invoke-static {p3}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 210
    invoke-static {p4}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    .line 211
    return-void
.end method

.method private writeOrCountBytes(Lo/uh;Z)J
    .locals 12

    .line 230
    const-wide/16 v2, 0x0

    .line 232
    const/4 v4, 0x0

    .line 233
    if-eqz p2, :cond_0

    .line 234
    new-instance p1, Lo/ue;

    invoke-direct {p1}, Lo/ue;-><init>()V

    move-object v4, p1

    .line 237
    :cond_0
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_6

    .line 238
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Headers;

    move-object v7, v0

    .line 239
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;

    move-object v8, v0

    .line 241
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 242
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lo/uj;

    invoke-interface {p1, v0}, Lo/uh;->ˋ(Lo/uj;)Lo/uh;

    .line 243
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 245
    if-eqz v7, :cond_1

    .line 246
    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v10

    :goto_1
    if-ge v9, v10, :cond_1

    .line 247
    invoke-virtual {v7, v9}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 248
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->COLONSPACE:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$200()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    move-result-object v0

    .line 249
    invoke-virtual {v7, v9}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 250
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {v8}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v9

    .line 255
    if-eqz v9, :cond_2

    .line 256
    const-string v0, "Content-Type: "

    invoke-interface {p1, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 257
    invoke-virtual {v9}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 258
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 261
    :cond_2
    invoke-virtual {v8}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v10

    .line 262
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_3

    .line 263
    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lo/uh;->ﹰ(Ljava/lang/String;)Lo/uh;

    move-result-object v0

    .line 264
    invoke-interface {v0, v10, v11}, Lo/uh;->ʲ(J)Lo/uh;

    move-result-object v0

    .line 265
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/uh;->ᐧ([B)Lo/uh;

    goto :goto_2

    .line 266
    :cond_3
    if-eqz p2, :cond_4

    .line 268
    invoke-virtual {v4}, Lo/ue;->clear()V

    .line 269
    const-wide/16 v0, -0x1

    return-wide v0

    .line 272
    :cond_4
    :goto_2
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 274
    if-eqz p2, :cond_5

    .line 275
    add-long/2addr v2, v10

    goto :goto_3

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lo/uh;)V

    .line 280
    :goto_3
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 283
    :cond_6
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lo/uj;

    invoke-interface {p1, v0}, Lo/uh;->ˋ(Lo/uj;)Lo/uh;

    .line 285
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 286
    # getter for: Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/squareup/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lo/uh;->ᐧ([B)Lo/uh;

    .line 288
    if-eqz p2, :cond_7

    .line 289
    invoke-virtual {v4}, Lo/ue;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 290
    invoke-virtual {v4}, Lo/ue;->clear()V

    .line 293
    :cond_7
    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .line 218
    iget-wide v2, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 219
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    return-wide v2

    .line 220
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lo/uh;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lo/uh;)V
    .locals 2

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lo/uh;Z)J

    .line 298
    return-void
.end method
