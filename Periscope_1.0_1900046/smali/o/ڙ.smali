.class Lo/ڙ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ss;


# instance fields
.field private final nJ:Lo/ᔩ;


# direct methods
.method public constructor <init>(Lo/ᔩ;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/ڙ;->nJ:Lo/ᔩ;

    .line 18
    return-void
.end method


# virtual methods
.method public օ()Ljava/io/InputStream;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ڙ;->nJ:Lo/ᔩ;

    invoke-interface {v0}, Lo/ᔩ;->օ()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public א()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ڙ;->nJ:Lo/ᔩ;

    invoke-interface {v0}, Lo/ᔩ;->א()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ע()[Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/ڙ;->nJ:Lo/ᔩ;

    invoke-interface {v0}, Lo/ᔩ;->ע()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ة()J
    .locals 2

    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method
