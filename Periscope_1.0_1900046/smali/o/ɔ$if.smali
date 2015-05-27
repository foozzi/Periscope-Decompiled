.class Lo/ɔ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ɔ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private cI:Ljava/lang/reflect/Method;

.field private cJ:Ljava/lang/reflect/Method;

.field private cK:Ljava/lang/reflect/Method;

.field private cL:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6

    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1750
    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doBeforeTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ$if;->cI:Ljava/lang/reflect/Method;

    .line 1752
    iget-object v0, p0, Lo/ɔ$if;->cI:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    goto :goto_0

    .line 1753
    :catch_0
    move-exception v5

    .line 1757
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "doAfterTextChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ$if;->cJ:Ljava/lang/reflect/Method;

    .line 1759
    iget-object v0, p0, Lo/ɔ$if;->cJ:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1762
    goto :goto_1

    .line 1760
    :catch_1
    move-exception v5

    .line 1764
    :goto_1
    :try_start_2
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "ensureImeVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ$if;->cK:Ljava/lang/reflect/Method;

    .line 1766
    iget-object v0, p0, Lo/ɔ$if;->cK:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1769
    goto :goto_2

    .line 1767
    :catch_2
    move-exception v5

    .line 1771
    :goto_2
    :try_start_3
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "showSoftInputUnchecked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/ResultReceiver;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ$if;->cL:Ljava/lang/reflect/Method;

    .line 1773
    iget-object v0, p0, Lo/ɔ$if;->cL:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1776
    goto :goto_3

    .line 1774
    :catch_3
    move-exception v5

    .line 1777
    :goto_3
    return-void
.end method


# virtual methods
.method ˊ(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .locals 5

    .line 1807
    iget-object v0, p0, Lo/ɔ$if;->cL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1809
    :try_start_0
    iget-object v0, p0, Lo/ɔ$if;->cL:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    return-void

    .line 1811
    :catch_0
    move-exception v4

    .line 1816
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1817
    return-void
.end method

.method ˊ(Landroid/widget/AutoCompleteTextView;)V
    .locals 3

    .line 1780
    iget-object v0, p0, Lo/ɔ$if;->cI:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1782
    :try_start_0
    iget-object v0, p0, Lo/ɔ$if;->cI:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    goto :goto_0

    .line 1783
    :catch_0
    move-exception v2

    .line 1786
    :cond_0
    :goto_0
    return-void
.end method

.method ˊ(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 5

    .line 1798
    iget-object v0, p0, Lo/ɔ$if;->cK:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1800
    :try_start_0
    iget-object v0, p0, Lo/ɔ$if;->cK:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    goto :goto_0

    .line 1801
    :catch_0
    move-exception v4

    .line 1804
    :cond_0
    :goto_0
    return-void
.end method

.method ˋ(Landroid/widget/AutoCompleteTextView;)V
    .locals 3

    .line 1789
    iget-object v0, p0, Lo/ɔ$if;->cJ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1791
    :try_start_0
    iget-object v0, p0, Lo/ɔ$if;->cJ:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    goto :goto_0

    .line 1792
    :catch_0
    move-exception v2

    .line 1795
    :cond_0
    :goto_0
    return-void
.end method
