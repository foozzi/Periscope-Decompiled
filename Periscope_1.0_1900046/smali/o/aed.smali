.class Lo/aed;
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

    .line 124
    iput-object p1, p0, Lo/aed;->bzB:Lo/adz;

    iput-object p2, p0, Lo/aed;->bzC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/aed;->bzB:Lo/adz;

    invoke-static {v0}, Lo/adz;->ˊ(Lo/adz;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aed;->bzC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᵅ(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lo/aed;->bzB:Lo/adz;

    invoke-static {v0}, Lo/adz;->ˋ(Lo/adz;)V

    .line 129
    return-void
.end method
