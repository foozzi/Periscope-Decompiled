.class Lo/ᔋ$if;
.super Lo/ᔊ$if;
.source ""

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method constructor <init>(Lo/ᕑ;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/ᔊ$if;-><init>(Lo/ᕑ;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/ᔋ$if;->ᵇ:Lo/ᕑ;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/ᕑ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
