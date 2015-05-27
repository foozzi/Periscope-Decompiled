.class Lo/agf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/age;


# instance fields
.field private final bCW:Lo/mi;

.field private final ږ:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/mi;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/agf;->ږ:Landroid/content/res/Resources;

    .line 24
    iput-object p2, p0, Lo/agf;->bCW:Lo/mi;

    .line 25
    return-void
.end method

.method private ᐡ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lo/agf;->ږ:Landroid/content/res/Resources;

    const v1, 0x7f0600fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lo/agf;->ږ:Landroid/content/res/Resources;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0600ff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const/16 v4, 0x74

    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x74

    if-le v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lo/agf;->ږ:Landroid/content/res/Resources;

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v6, v0, 0x74

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/lang/String;Lo/lz;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Lo/lz<Lo/om;>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/agf;->bCW:Lo/mi;

    invoke-virtual {v0}, Lo/mi;->aZ()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v10

    .line 31
    invoke-direct {p0, p1, p2}, Lo/agf;->ᐡ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 32
    move-object v0, v10

    move-object v1, v11

    move-object v9, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lo/lz;)V

    .line 33
    return-void
.end method
