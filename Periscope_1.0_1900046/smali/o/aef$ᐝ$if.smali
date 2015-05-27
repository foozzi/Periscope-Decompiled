.class public Lo/aef$ᐝ$if;
.super Lo/〱;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef$ᐝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field final synthetic bAc:Lo/aef$ᐝ;


# direct methods
.method public constructor <init>(Lo/aef$ᐝ;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lo/aef$ᐝ$if;->bAc:Lo/aef$ᐝ;

    invoke-direct {p0}, Lo/〱;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Object;Lo/ḟ;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lo/aef$ᐝ$if;->bAc:Lo/aef$ᐝ;

    iget-object v0, v0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    move-object v1, p1

    check-cast v1, Lo/לּ;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    return-void
.end method
