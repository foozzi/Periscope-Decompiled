.class Lo/ṭ;
.super Lo/py;
.source ""

# interfaces
.implements Lo/sg;


# instance fields
.field private final apiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Ljava/lang/String;)V
    .locals 7

    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    sget-object v6, Lo/sm;->XP:Lo/sm;

    invoke-direct/range {v0 .. v6}, Lo/ṭ;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Ljava/lang/String;Lo/sm;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Ljava/lang/String;Lo/sm;)V
    .locals 6

    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lo/py;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 42
    iput-object p5, p0, Lo/ṭ;->apiKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private ˊ(Lo/sn;Ljava/lang/String;)Lo/sn;
    .locals 3

    .line 61
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v2

    invoke-virtual {v2}, Lo/ᴣ;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v1, p2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/sn;Ljava/util/List;)Lo/sn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/sn;Ljava/util/List<Ljava/io/File;>;)Lo/sn;"
        }
    .end annotation

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v5, v0

    .line 70
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding analytics session file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to multipart POST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session_analytics_file_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.crashlytics.android.events"

    invoke-virtual {p1, v0, v1, v2, v5}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lo/sn;

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    return-object p1
.end method


# virtual methods
.method public ʼ(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/io/File;>;)Z"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lo/ṭ;->ck()Lo/sn;

    move-result-object v3

    .line 48
    iget-object v0, p0, Lo/ṭ;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lo/ṭ;->ˊ(Lo/sn;Ljava/lang/String;)Lo/sn;

    move-result-object v3

    .line 49
    invoke-direct {p0, v3, p1}, Lo/ṭ;->ˊ(Lo/sn;Ljava/util/List;)Lo/sn;

    move-result-object v3

    .line 51
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " analytics files to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lo/ṭ;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Lo/sn;->code()I

    move-result v4

    .line 54
    invoke-static {}, Lo/ᴣ;->ᴢ()Lo/ᴣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴣ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code for analytics file send is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {v4}, Lo/qw;->灬(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
