.class Lo/aee;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzB:Lo/adz;

.field final synthetic bzC:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/adz;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/aee;->bzB:Lo/adz;

    iput-object p2, p0, Lo/aee;->bzC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 143
    sget-object v0, Lo/vi$if;->bmp:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 144
    iget-object v0, p0, Lo/aee;->bzB:Lo/adz;

    invoke-static {v0}, Lo/adz;->ˊ(Lo/adz;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aee;->bzC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᵃ(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lo/aee;->bzB:Lo/adz;

    invoke-static {v0}, Lo/adz;->ˋ(Lo/adz;)V

    .line 146
    return-void
.end method
