.class public final Lo/ԏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ت;


# instance fields
.field private final AB:Lo/ت;

.field private final AC:Lo/ت;

.field private final AD:Lo/ت;

.field private final AE:Lo/ت;

.field private AF:Lo/ت;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ף;Ljava/lang/String;Z)V
    .locals 7

    .line 96
    new-instance v0, Lo/ӱ;

    move-object v1, p3

    const/4 v2, 0x0

    move-object v3, p2

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lo/ӱ;-><init>(Ljava/lang/String;Lo/র;Lo/ף;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lo/ԏ;-><init>(Landroid/content/Context;Lo/ף;Lo/ت;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ף;Lo/ت;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p3}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AB:Lo/ت;

    .line 112
    new-instance v0, Lo/Դ;

    invoke-direct {v0, p2}, Lo/Դ;-><init>(Lo/ף;)V

    iput-object v0, p0, Lo/ԏ;->AC:Lo/ت;

    .line 113
    new-instance v0, Lo/ʝ;

    invoke-direct {v0, p1, p2}, Lo/ʝ;-><init>(Landroid/content/Context;Lo/ף;)V

    iput-object v0, p0, Lo/ԏ;->AD:Lo/ت;

    .line 114
    new-instance v0, Lo/λ;

    invoke-direct {v0, p1, p2}, Lo/λ;-><init>(Landroid/content/Context;Lo/ף;)V

    iput-object v0, p0, Lo/ԏ;->AE:Lo/ت;

    .line 115
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 151
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    invoke-interface {v0}, Lo/ت;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    .line 156
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    throw v1

    .line 158
    :cond_0
    :goto_0
    return-void
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    invoke-interface {v0}, Lo/ت;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1

    .line 141
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    invoke-interface {v0, p1, p2, p3}, Lo/ت;->read([BII)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/к;)J
    .locals 3

    .line 119
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 121
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v0, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_1
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lo/ԏ;->AD:Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lo/ԏ;->AC:Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    goto :goto_1

    .line 128
    :cond_3
    const-string v0, "asset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lo/ԏ;->AD:Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    goto :goto_1

    .line 130
    :cond_4
    const-string v0, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lo/ԏ;->AE:Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    goto :goto_1

    .line 133
    :cond_5
    iget-object v0, p0, Lo/ԏ;->AB:Lo/ت;

    iput-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    .line 136
    :goto_1
    iget-object v0, p0, Lo/ԏ;->AF:Lo/ت;

    invoke-interface {v0, p1}, Lo/ت;->ˊ(Lo/к;)J

    move-result-wide v0

    return-wide v0
.end method
