.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;
.super Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;
.source "SourceFile"


# instance fields
.field private final mDuration:J

.field private final mStateAnimator:Lcom/android/launcher3/anim/AnimatorSetBuilder;


# direct methods
.method public constructor <init>(JLcom/android/launcher3/anim/AnimatorSetBuilder;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;-><init>()V

    .line 189
    iput-wide p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mDuration:J

    .line 190
    iput-object p3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mStateAnimator:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    .line 191
    return-void
.end method


# virtual methods
.method public final setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 208
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 212
    iget-wide p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mStateAnimator:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 214
    return-void
.end method

.method public final setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 219
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 223
    iget-wide p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    iget-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mStateAnimator:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 225
    return-void
.end method

.method public final setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 3

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 199
    new-instance v0, Lcom/android/launcher3/AlphaUpdateListener;

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 199
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    iget-wide v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mDuration:J

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;->mStateAnimator:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 203
    return-void
.end method
