.class public Lo/ads;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ads$if;,
        Lo/ads$ˋ;,
        Lo/ads$ˊ;
    }
.end annotation


# instance fields
.field private final byT:Lo/adw;

.field private final byU:Lo/alf;

.field private final byV:Lo/amw;


# direct methods
.method public constructor <init>(Lo/adw;Lo/alf;Lo/amw;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/ads;->byT:Lo/adw;

    .line 34
    iput-object p2, p0, Lo/ads;->byU:Lo/alf;

    .line 35
    iput-object p3, p0, Lo/ads;->byV:Lo/amw;

    .line 36
    return-void
.end method

.method static synthetic ˊ(Lo/ads;)Lo/alf;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ads;)Lo/adw;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ads;->byT:Lo/adw;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ads;)Lo/amw;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ads;->byV:Lo/amw;

    return-object v0
.end method


# virtual methods
.method public xe()V
    .locals 2

    .line 74
    iget-object v0, p0, Lo/ads;->byT:Lo/adw;

    iget-object v1, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0, v1}, Lo/adw;->ᕀ(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public xf()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lo/ads;->byT:Lo/adw;

    iget-object v1, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ant;Lo/vk;)V
    .locals 6

    .line 40
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    sget-object v1, Lo/anu;->bNX:Lo/anu;

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0}, Lo/alf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f060014

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0}, Lo/alf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060015

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v0, Lo/ads$ˋ;

    iget-object v1, p0, Lo/ads;->byV:Lo/amw;

    invoke-direct {v0, p0, p1, v1, p2}, Lo/ads$ˋ;-><init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v1

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lo/ads$if;

    iget-object v1, p0, Lo/ads;->byV:Lo/amw;

    invoke-direct {v0, p0, p1, v1, p2}, Lo/ads$if;-><init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-virtual {p0, v4, v5}, Lo/ads;->ˋ(Ljava/lang/String;Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public ˋ(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<+Lo/ale;>;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0, p1}, Lo/alf;->setSnippet(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0, p2}, Lo/alf;->setActions(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lo/ads;->byU:Lo/alf;

    invoke-virtual {v0}, Lo/alf;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 62
    new-instance v0, Lo/adt;

    invoke-direct {v0, p0, v1}, Lo/adt;-><init>(Lo/ads;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    return-void
.end method
